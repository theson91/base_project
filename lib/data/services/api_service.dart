import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();
  static ApiService get instance => _instance;

  late Dio dio;

  ApiService._internal({String? baseUrl, String? authToken}) {
    _initDio(baseUrl, authToken);
  }

  void _initDio(String? baseUrl, String? authToken) {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl ?? ApiConstants.baseUrl,
      connectTimeout: Duration(seconds: ApiConstants.connectionTimeout),
      receiveTimeout: Duration(seconds: ApiConstants.receiveTimeout),
      sendTimeout: Duration(seconds: ApiConstants.sendTimeout),
      responseType: ResponseType.json,
    ));
    dio.interceptors.add(LogInterceptor());
    dio.interceptors.add(CurlInterceptor());
    dio.options.headers['accept'] = 'application/json';
  }

  void updateBaseUrl(String baseUrl, String? authToken) {
    _initDio(baseUrl, authToken);
  }

  void setLanguage(String language) {
    dio.options.headers['language'] = language;
  }

// Method to update token
  void setAuthToken(String token) {
    dio.options.headers['Authorization'] = 'Bearer $token';
  }

  // Clear token (optional)
  void clearAuthToken() {
    dio.options.headers.remove('Authorization');
  }

  // GET request
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // POST request
  Future<Response> post(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // PUT request
  Future<Response> put(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // DELETE request
  Future<Response> delete(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}

class CurlInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final curlCommand = StringBuffer('curl -X ${options.method}');

    // Add headers
    options.headers.forEach((key, value) {
      curlCommand.write(" -H '$key: $value'");
    });

    // Add query parameters
    if (options.queryParameters.isNotEmpty) {
      final queryParams = options.queryParameters.entries
          .map((e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value.toString())}')
          .join('&');
      curlCommand
          .write(' --url "${options.baseUrl}${options.path}?$queryParams"');
    } else {
      curlCommand.write(' --url "${options.baseUrl}${options.path}"');
    }

    // Add data (if present)
    if (options.data != null) {
      if (options.data is Map) {
        curlCommand.write(" --data '${options.data}'");
      } else {
        curlCommand.write(" --data '${options.data.toString()}'");
      }
    }

    // Print the cURL command
    print('cURL : $curlCommand');

    super.onRequest(options, handler);
  }
}
