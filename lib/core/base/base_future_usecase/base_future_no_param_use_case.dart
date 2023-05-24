import '../base_use_case.dart';

abstract class NoParamsUseCase<BaseOutput>
    extends BaseUseCaseSimple<BaseOutput> {
  const NoParamsUseCase() : super();

  @override
  Future<BaseOutput> call();
}
