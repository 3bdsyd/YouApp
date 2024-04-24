// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:you_app/features/auth/presentation/views/screens/login.dart'
    as _i1;
import 'package:you_app/features/auth/presentation/views/screens/register.dart'
    as _i2;
import 'package:you_app/main.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(child: const _i1.LoginScreen()),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterScreen(),
      );
    },
    YouApp.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.YouApp(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RegisterScreen]
class RegisterRoute extends _i4.PageRouteInfo<void> {
  const RegisterRoute({List<_i4.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.YouApp]
class YouApp extends _i4.PageRouteInfo<void> {
  const YouApp({List<_i4.PageRouteInfo>? children})
      : super(
          YouApp.name,
          initialChildren: children,
        );

  static const String name = 'YouApp';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
