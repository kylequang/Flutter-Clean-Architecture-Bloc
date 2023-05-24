part of 'login_bloc_bloc.dart';

@freezed
class LoginBlocEvent with _$LoginBlocEvent {
  const factory LoginBlocEvent.started() = Started;
  const factory LoginBlocEvent.login(String email, String password) = Login;
}
