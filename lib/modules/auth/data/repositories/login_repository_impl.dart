import 'package:dio/dio.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/core/data/local/storage/app_storage_manager.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/domain/entities/user_entity.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/domain/repositories/login_repository.dart';
import '../../../../core/exception_handler/app_error.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<CurrentUserEntity> loginRequest() async {
    try {
      //request API
      //my example after request API
      await AppStorageManager()
          .appStorageRepositoryImpl
          .saveDeviceToken("example token"); //example

      return const CurrentUserEntity(id: 1, name: "Lê Quang Kỳ");
    } catch (error) {
      if (error is DioError) {
        final baseException = DefaultAppErrorHandler().handleDioError(error);
        throw Exception(baseException.message);
      } else {
        throw Exception('Failed to login 123321: $error');
      }
    }
  }
}
