import 'package:dio/dio.dart';

class ApiException implements Exception {
  final String message;

  ApiException._(this.message);

  factory ApiException.fromDioException(DioException dioException) {
    late String msg;

    switch (dioException.type) {
      case DioExceptionType.cancel:
        msg = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        msg = "Connection timeout with API server";
        break;
      case DioExceptionType.receiveTimeout:
        msg = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.badResponse:
        msg = handleError(
          dioException.response?.statusCode,
          dioException.response?.data,
        );
        break;
      case DioExceptionType.sendTimeout:
        msg = "Send timeout in connection with API server";
        break;
      case DioExceptionType.unknown:
        if (dioException.message?.contains("SocketException") == true) {
          msg = 'No Internet connection';
        } else {
          msg = "Unexpected error occurred";
        }
        break;
      default:
        msg = "Something went wrong";
        break;
    }

    return ApiException._(msg);
  }

  static String handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return error is Map && error['error'] != null ? error['error'] : 'Not found';
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
