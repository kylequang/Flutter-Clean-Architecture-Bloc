import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/domain/entities/user_entity.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/domain/usecase/login_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc_event.dart';
part 'login_bloc_state.dart';
part 'login_bloc_bloc.freezed.dart';

class LoginBlocBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  LoginUseCase loginUseCase;
  LoginBlocBloc({required this.loginUseCase}) : super(const _Initial()) {
    on<LoginBlocEvent>((event, emit) async {
      await event.when(
        started: () {},
        login: (email, password) async {
          final res = await loginUseCase.request();
          emit(LoginBlocState.success(res));
        },
      );
    });
  }
}
