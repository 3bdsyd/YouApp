import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/features/auth/presentation/manger/register_cubit/register_cubit.dart';
import 'package:you_app/features/auth/presentation/views/widgets/register_body.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget implements AutoRouteWrapper {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    ScaffoldMessenger(
      key: context.read<RegisterCubit>().scaffoldMessengerKey,
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: _boxDecoration(),
          child: BlocBuilder<RegisterCubit, RegisterState>(builder: (context, state) {
            if (state is RegisterLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: ColorName.downy,
                ),
              );
            }
            return const RegisterBodyWidget();
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
    return BlocProvider<RegisterCubit>(
      create: (context) => RegisterCubit(),
      child: this,
    );
  }
}
