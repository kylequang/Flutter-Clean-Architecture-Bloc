import 'package:flutter_boilerplate_clean_architecture_bloc/core/enums/app_error_type.dart';
import 'base_exception.dart';

abstract class BaseExceptionMapper<T extends AppErrorType,
    R extends BaseException> {
  Future<R> mapperTo(T error);

  Future<T> mapperFrom(R exception);
}
