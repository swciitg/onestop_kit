import 'package:dio/dio.dart';
import 'package:onestop_kit/auth_user_helpers.dart';
import 'package:onestop_kit/backend_helper.dart';
import 'package:onestop_kit/endpoints.dart';

class OneStopApi{
  final _dio = Dio(BaseOptions(
      baseUrl: Endpoints.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      headers: Endpoints.getHeader()
  ));

  OneStopApi(){
    _dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers["Authorization"] =
      "Bearer ${await AuthUserHelpers.getAccessToken()}";
      handler.next(options);
    }, onError: (error, handler) async {
      var response = error.response;
      if (response != null && response.statusCode == 401) {
        if ((await AuthUserHelpers.getAccessToken()).isEmpty) {
          throw Exception("Login to continue!!");
        } else {
          bool couldRegenerate = await regenerateAccessToken();
          if (couldRegenerate) {
            // retry
            return handler.resolve(await retryRequest(response));
          } else {
            throw Exception("Your session has expired!! Login again.");
          }
        }
      } else if (response != null && response.statusCode == 403) {
        throw Exception("Access not allowed in guest mode");
      } else if (response != null && response.statusCode == 400) {
        throw Exception(response.data["message"]);
      }
      // admin user with expired tokens
      return handler.next(error);
    }));
  }
  Future<Response<dynamic>> retryRequest(Response response) async {
    RequestOptions requestOptions = response.requestOptions;
    response.requestOptions.headers[BackendHelper.authorization] =
    "Bearer ${await AuthUserHelpers.getAccessToken()}";
    final options =
    Options(method: requestOptions.method, headers: requestOptions.headers);
    Dio retryDio = Dio(BaseOptions(
        baseUrl: Endpoints.baseUrl,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        headers: {'Security-Key': Endpoints.apiSecurityKey}));
    if (requestOptions.method == "GET") {
      return retryDio.request(requestOptions.path,
          queryParameters: requestOptions.queryParameters, options: options);
    } else {
      return retryDio.request(requestOptions.path,
          queryParameters: requestOptions.queryParameters,
          data: requestOptions.data,
          options: options);
    }
  }

  Future<bool> regenerateAccessToken() async {
    String refreshToken = await AuthUserHelpers.getRefreshToken();
    try {
      Dio regenDio = Dio(BaseOptions(
          baseUrl: Endpoints.baseUrl,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5)));
      Response<Map<String, dynamic>> resp =
      await regenDio.post("/user/accesstoken",
          options: Options(headers: {
            'Security-Key': Endpoints.apiSecurityKey,
            "authorization": "Bearer $refreshToken"
          }));
      var data = resp.data!;
      await AuthUserHelpers.setAccessToken(data[BackendHelper.accesstoken]);
      return true;
    } catch (err) {
      return false;
    }
  }
}