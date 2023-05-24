import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/data/models/user/user_model.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/domain/entities/user_entity.dart';

import '../../../../core/mapper/data_mapper.dart';

class CurrentUserMapper
    extends DataMapper<CurrentUserResult, CurrentUserEntity> {
  @override
  CurrentUserEntity mapToEntity(CurrentUserResult data) {
    return CurrentUserEntity(id: data.id, name: data.fullName);
  }
}
