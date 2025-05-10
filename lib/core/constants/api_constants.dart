class ApiConstants {
  static const String baseUrl = 'https://api.example.com';

  // Timeout settings in seconds
  static const connectionTimeout = 30;
  static const receiveTimeout = 30;
  static const sendTimeout = 30;

  static const String loginEndpoint = '/auth/login';
  static const String registerEndpoint = '/auth/register';
  static const String userProfileEndpoint = '/user/profile';
  static const String updateProfileEndpoint = '/user/update';
}