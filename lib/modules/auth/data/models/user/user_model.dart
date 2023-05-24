import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

//my example
@freezed
abstract class CurrentUserResult with _$CurrentUserResult {
  const CurrentUserResult._();
  const factory CurrentUserResult({
    required int id,
    @JsonKey(name: 'firstName_lastName') required String fullName,
  }) = _CurrentUserResult;

  factory CurrentUserResult.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserResultFromJson(json);
}
