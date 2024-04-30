import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redacted/redacted.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/features/profile/presentation/manger/profile_cubit/profile_cubit.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_body.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_loading.dart';
import 'package:you_app/shared/widgets/custom_app_bar.dart';
import 'package:you_app/shared/widgets/custom_loading.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget implements AutoRouteWrapper {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: context.read<ProfileCubit>().scaffoldMessengerKey,
      child: Scaffold(
        backgroundColor: ColorName.firefly,
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state is ProfileLoading) {
              return const ProfileLoadingWidget();
            }
            return const ProfileBodyWidget();
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit()
        ..getProfile()
        ..initImage(),
      child: this,
    );
  }
}
