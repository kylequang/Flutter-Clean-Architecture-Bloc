//kyle
abstract class DataMapper<DataModel, Entity> {
  const DataMapper();

  Entity mapToEntity(DataModel data);

  List<Entity> mapToListEntity(List<DataModel>? listData) {
    return listData?.map(mapToEntity).toList() ?? List.empty();
  }
}

/// Optional: if need map from entity to  data
mixin DataMapperMixin<DataModel, Entity> on DataMapper<DataModel, Entity> {
  DataModel mapToData(Entity entity);

  DataModel? mapToNullableData(Entity? entity) {
    if (entity == null) {
      return null;
    }

    return mapToData(entity);
  }

  List<DataModel>? mapToNullableListData(List<Entity>? listEntity) {
    return listEntity?.map(mapToData).toList();
  }

  List<DataModel> mapToListData(List<Entity>? listEntity) {
    return mapToNullableListData(listEntity) ?? List.empty();
  }
}
