import 'package:dio/dio.dart';

import '../../local/storage/app_storage_manager.dart';

class AuthInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = AppStorageManager().appStorageRepositoryImpl.getDeviceToken();
    if (token?.isNotEmpty == true) {
      options.headers['Authorization'] = 'Bearer $token';
    }
  }
}
