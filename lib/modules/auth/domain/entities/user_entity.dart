import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';

//my example
@freezed
abstract class CurrentUserEntity with _$CurrentUserEntity {
  const factory CurrentUserEntity({required int id, required String name}) =
      _CurrentUserEntity;
}
