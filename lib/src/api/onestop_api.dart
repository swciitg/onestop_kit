import 'package:dio/dio.dart';
import 'package:onestop_kit/src/api/auth_user_helpers.dart';
import 'package:onestop_kit/src/api/backend_helper.dart';

class OneStopApi {
  final String onestopBaseUrl;
  final String onestopSecurityKey;
  final String serverBaseUrl;
  final Future<void> Function() onRefreshTokenExpired;

  late Dio _onestopDio;
  late Dio _serverDio;

  Dio get onestopDio => _onestopDio;

  Dio get serverDio => _serverDio;

  OneStopApi({
    required this.serverBaseUrl,
    required this.onestopBaseUrl,
    required this.onestopSecurityKey,
    required this.onRefreshTokenExpired,
  }) {
    _onestopDio = Dio(BaseOptions(
        baseUrl: onestopBaseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {
          'Content-Type': 'application/json',
          'security-key': onestopSecurityKey
        }));

    _serverDio = Dio(BaseOptions(
        baseUrl: serverBaseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {
          'Content-Type': 'application/json',
          'security-key': onestopSecurityKey
        }));

    final serverInterceptors =
        InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers["Authorization"] =
          "Bearer ${await AuthUserHelpers.getAccessToken()}";
      handler.next(options);
    }, onError: (error, handler) async {
      final response = error.response;
      if (response != null && response.statusCode == 401) {
        if ((await AuthUserHelpers.getAccessToken()).isEmpty) {
          throw Exception("Login to continue!!");
        } else {
          bool couldRegenerate = await regenerateAccessToken();
          if (couldRegenerate) {
            return handler.resolve(await retryRequest(response));
          } else {
            await onRefreshTokenExpired();
            return;
            // throw Exception("Your session has expired!! Login again.");
          }
        }
      } else if (response != null && response.statusCode == 403) {
        throw Exception("Access not allowed in guest mode");
      } else if (response != null && response.statusCode == 400) {
        throw Exception(response.data["message"]);
      }
      // admin user with expired tokens
      return handler.next(error);
    });

    _onestopDio.interceptors.add(serverInterceptors);
    _serverDio.interceptors.add(serverInterceptors);
  }

  Future<Response<dynamic>> retryRequest(Response response) async {
    RequestOptions requestOptions = response.requestOptions;
    response.requestOptions.headers[BackendHelper.authorization] =
        "Bearer ${await AuthUserHelpers.getAccessToken()}";
    final options =
        Options(method: requestOptions.method, headers: requestOptions.headers);
    final retryDio = Dio(BaseOptions(
        baseUrl: requestOptions.baseUrl,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        headers: {'Security-Key': onestopSecurityKey}));
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
      final regenDio = Dio(BaseOptions(
          baseUrl: onestopBaseUrl,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5)));
      Response<Map<String, dynamic>> resp = await regenDio.post(
          "/user/accesstoken",
          options: Options(headers: {
            'Security-Key': onestopSecurityKey,
            "authorization": "Bearer $refreshToken"
          }));
      final data = resp.data!;
      await AuthUserHelpers.setAccessToken(data[BackendHelper.accesstoken]);
      return true;
    } catch (err) {
      return false;
    }
  }
}
