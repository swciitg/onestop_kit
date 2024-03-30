class Endpoints{
  static const baseUrl = String.fromEnvironment('SERVER-URL');
  static const apiSecurityKey = String.fromEnvironment('SECURITY-KEY');
  static getHeader() {
    return {
      'Content-Type': 'application/json',
      'security-key': Endpoints.apiSecurityKey
    };
  }
}