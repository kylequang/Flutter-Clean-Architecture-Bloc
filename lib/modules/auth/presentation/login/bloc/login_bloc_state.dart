part of 'login_bloc_bloc.dart';

@freezed
class LoginBlocState with _$LoginBlocState {
  const factory LoginBlocState.initial() = _Initial;
  const factory LoginBlocState.loading() = Loading;
  const factory LoginBlocState.success(CurrentUserEntity user) = Success;
  const factory LoginBlocState.error(String errorMessage) = Error;
}
