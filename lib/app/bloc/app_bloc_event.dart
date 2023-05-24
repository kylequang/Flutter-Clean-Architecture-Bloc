part of 'app_bloc_bloc.dart';

@freezed
class AppBlocEvent with _$AppBlocEvent {
  const factory AppBlocEvent.started() = _Started;
  const factory AppBlocEvent.updateLanguage(String locale) = _UpdateLanguage;
}
