import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/features/auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:you_app/features/auth/presentation/views/widgets/login_body.dart';

@RoutePage()
class LoginScreen extends StatelessWidget implements AutoRouteWrapper {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: context.read<LoginCubit>().scaffoldMessengerKey,
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: _boxDecoration(),
          child: BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
            if (state is LoginLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: ColorName.downy,
                ),
              );
            }
            return const LoginBodyWidget();
          }),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Image(
            fit: BoxFit.cover,
            image: Svg(Assets.images.background.path),
          ).image,
        ),
      );
      
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),
      child: this,
    );
  }
}
