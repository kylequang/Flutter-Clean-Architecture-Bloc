import 'package:dio/dio.dart';

import '../../constants/end_point.dart';

class DioBuilder {
  static final String baseUrl = APIConstants.baseUrl;
  //'https://api.example.com'; //your base url api here

  static const Duration connectTimeout = Duration(seconds: 5); // 5 seconds
  static const Duration receiveTimeout = Duration(seconds: 3); // 3 seconds

  static Dio createInstance() {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      queryParameters: {"api_key": APIConstants.apiKey},
    );

    final dio = Dio(options);

    //example
    dio.interceptors.add(LogInterceptor(responseBody: true));
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Modify request options
        // For example, add headers or authentication token
        // Add AuthInterceptor
        // dio.interceptors.add(AuthInterceptor());
        return handler.next(options);
      },
      onResponse: (response, handler) {
        // Process response data
        return handler.next(response);
      },
      onError: (DioError error, handler) {
        // Handle error
        return handler.next(error);
      },
    ));

    return dio;
  }

  static Dio getInstance() {
    final dio = createInstance();
    return dio;
  }
}
