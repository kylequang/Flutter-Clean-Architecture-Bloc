// ignore_for_file: avoid_print

import '../base_use_case.dart';
import '../io/base_input.dart';
import '../io/base_output.dart';

abstract class BaseFutureUseCase<Input extends BaseInput,
    Output extends BaseOutput> extends BaseUseCase<Input, Future<Output>> {
  const BaseFutureUseCase();

  Future<Output> execute(Input input) async {
    try {
      final output = await buildUseCase(input);
      return output;
    } catch (e) {
      rethrow;
      // throw e is AppException ? e : AppUncaughtException(e);
    }
  }
}
