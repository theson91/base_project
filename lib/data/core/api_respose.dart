// Response for single item
class ApiResponse<T> {
  final T data;
  final int statusCode;
  final String? message;

  ApiResponse({
    required this.data,
    required this.statusCode,
    this.message,
  });

  factory ApiResponse.success(T data, int statusCode) {
    return ApiResponse<T>(data: data, statusCode: statusCode);
  }

  factory ApiResponse.error(String message, int statusCode) {
    return ApiResponse<T>(
      data: {} as T,
      statusCode: statusCode,
      message: message,
    );
  }

  bool get isSuccess => statusCode >= 200 && statusCode < 300;
}

// Reponse for list of items
class ApiResponseList<T> {
  final List<T> data;
  final int statusCode;
  final String? message;

  ApiResponseList({
    required this.data,
    required this.statusCode,
    this.message,
  });

  factory ApiResponseList.success(List<T> data, int statusCode) {
    return ApiResponseList<T>(data: data, statusCode: statusCode);
  }

  factory ApiResponseList.error(String message, int statusCode) {
    return ApiResponseList<T>(
      data: const [],
      statusCode: statusCode,
      message: message,
    );
  }

  bool get isSuccess => statusCode >= 200 && statusCode < 300;
}
