import 'package:flutter_boilerplate_clean_architecture_bloc/core/base/base_use_case.dart';
import '../../data/repositories/login_repository_impl.dart';
import '../entities/user_entity.dart';

class LoginUseCase extends BaseUseCaseSimple<CurrentUserEntity> {
  LoginUseCase(this._repository) : super();

  final LoginRepositoryImpl _repository;

  @override
  Future<CurrentUserEntity> request() {
    return _repository.loginRequest();
  }
}
