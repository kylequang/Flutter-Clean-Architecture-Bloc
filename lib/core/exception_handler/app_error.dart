import 'package:dio/dio.dart';
import '../base/base_exception.dart';

abstract class AppErrorHandler {
  void handleDioError(DioError error);
  
}

class DefaultAppErrorHandler extends AppErrorHandler {
  @override
  BaseException handleDioError(DioError error) {
    String errorMessage = 'An error occurred';

    if (error.type == DioErrorType.badResponse) {
      final response = error.response;
      errorMessage = error.message ??
          'Request failed with status code ${response?.statusCode}';
    } else if (error.type == DioErrorType.connectionTimeout) {
      errorMessage = error.message ?? 'Connection timeout';
    } else if (error.type == DioErrorType.sendTimeout) {
      errorMessage = error.message ?? 'Send request timeout';
    } else if (error.type == DioErrorType.receiveTimeout) {
      errorMessage = error.message ?? 'Receive response timeout';
    } else if (error.type == DioErrorType.cancel) {
      errorMessage = error.message ?? 'Request canceled';
    }

    return BaseException(errorMessage, error);
  }
}
