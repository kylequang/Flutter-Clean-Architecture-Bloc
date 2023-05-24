import '../entities/user_entity.dart';

abstract class LoginRepository {
  Future<CurrentUserEntity> loginRequest();
}
