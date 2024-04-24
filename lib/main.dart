import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:you_app/core/gen/fonts.gen.dart';
import 'package:you_app/core/helper/shared_preferences.dart';
import 'package:you_app/core/router/app_router.dart';

void main(List<String> args) async {
  //* Required for async calls in `main`
  WidgetsFlutterBinding.ensureInitialized();

  //* Initialize PreferenceUtils instance.
  await SharedPref.init();
  runApp(const YouApp());
}

@RoutePage()
class YouApp extends StatelessWidget {
  const YouApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: FontFamily.inter, useMaterial3: true),
      routerConfig: appRouter.config(),
    );
  }
}
