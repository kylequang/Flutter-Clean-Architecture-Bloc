import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/core/routes/app_routes.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/data/repositories/login_repository_impl.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/domain/usecase/login_usecase.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/presentation/login/bloc/login_bloc_bloc.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<LoginBlocBloc, LoginBlocState>(
              listener: (context, state) {
                state.maybeMap(
                  success: (value) {
                    AutoRouter.of(context).replaceAll([const MainRoute()]);
                  },
                  orElse: () => null,
                );
              },
              builder: (context, state) {
                return BlocBuilder<LoginBlocBloc, LoginBlocState>(
                  builder: (context, state) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Login Page"),
                        const SizedBox(
                          height: 50,
                        ),
                        TextButton(
                            onPressed: () {
                              context.read<LoginBlocBloc>().add(
                                    const LoginBlocEvent.login(
                                        "123@gmail.com", "hello"),
                                  );
                            },
                            child: const Text("Login"))
                      ],
                    );
                  },
                );
              },
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const Text("Login Page"),
            //     const SizedBox(
            //       height: 50,
            //     ),
            //     TextButton(
            //         onPressed: () {
            //           context.read<LoginBlocBloc>().add(
            //                 const LoginBlocEvent.login(
            //                     "123@gmail.com", "hello"),
            //               );
            //         },
            //         child: const Text("Login"))
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
