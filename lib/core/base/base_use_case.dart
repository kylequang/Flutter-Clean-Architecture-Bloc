import 'package:flutter/material.dart';
import 'io/base_input.dart';

abstract class BaseUseCase<Input extends BaseInput, Output> {
  const BaseUseCase();

  @protected
  Output buildUseCase(Input input);
}

abstract class BaseUseCaseSimple<Output> {
  const BaseUseCaseSimple();

  Future<Output> request();
}
