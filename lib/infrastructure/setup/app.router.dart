// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/foundation.dart' as _i18;
import 'package:flutter/material.dart' as _i17;
import 'package:stacked/stacked.dart' as _i16;
import 'package:stacked_services/stacked_services.dart' as _i14;

import '../../presentation/view/auth/login/login_view.dart' as _i3;
import '../../presentation/view/auth/register/register_view.dart' as _i2;
import '../../presentation/view/auth/splash/splash_view.dart' as _i1;
import '../../presentation/view/favorite_view.dart' as _i11;
import '../../presentation/view/home/home_view.dart' as _i4;
import '../../presentation/view/notification_view.dart' as _i12;
import '../../presentation/view/settings/about_us_settings_view.dart' as _i10;
import '../../presentation/view/settings/account_settings_view.dart' as _i7;
import '../../presentation/view/settings/app_settings_view.dart' as _i9;
import '../../presentation/view/settings/donation_view.dart' as _i5;
import '../../presentation/view/settings/help_settings_view.dart' as _i6;
import '../../presentation/view/settings/security_settings_view.dart' as _i8;
import '../../presentation/view/unknown/unknown_view.dart' as _i13;
import 'auth_guard.dart' as _i15;

final stackedRouter = StackedRouterWeb(
  navigatorKey: _i14.StackedService.navigatorKey,
  authGuard: _i15.AuthGuard(),
);

class StackedRouterWeb extends _i16.RootStackRouter {
  StackedRouterWeb({
    _i17.GlobalKey<_i17.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i15.AuthGuard authGuard;

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    SplashViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    RegisterViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeViewRoute.name: (routeData) {
      final args = routeData.argsAs<HomeViewArgs>();
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.HomeView(
          key: args.key,
          userId: args.userId,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DonationViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.DonationView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HelpSettingsViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.HelpSettingsView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AccountSettingsViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.AccountSettingsView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    SecuritySettingsViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.SecuritySettingsView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AppSettingsViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.AppSettingsView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AboutUsSettingsViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i10.AboutUsSettingsView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    FavoriteViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: _i11.FavoriteView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    NotificationViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: _i12.NotificationView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UnknownViewRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i13.UnknownView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(
          SplashViewRoute.name,
          path: '/',
        ),
        _i16.RouteConfig(
          RegisterViewRoute.name,
          path: '/register-view',
        ),
        _i16.RouteConfig(
          LoginViewRoute.name,
          path: '/login-view',
        ),
        _i16.RouteConfig(
          HomeViewRoute.name,
          path: '/home-view',
          guards: [authGuard],
        ),
        _i16.RouteConfig(
          DonationViewRoute.name,
          path: '/donation-view',
          guards: [authGuard],
        ),
        _i16.RouteConfig(
          HelpSettingsViewRoute.name,
          path: '/help-settings-view',
          guards: [authGuard],
        ),
        _i16.RouteConfig(
          AccountSettingsViewRoute.name,
          path: '/account-settings-view',
          guards: [authGuard],
        ),
        _i16.RouteConfig(
          SecuritySettingsViewRoute.name,
          path: '/security-settings-view',
          guards: [authGuard],
        ),
        _i16.RouteConfig(
          AppSettingsViewRoute.name,
          path: '/app-settings-view',
          guards: [authGuard],
        ),
        _i16.RouteConfig(
          AboutUsSettingsViewRoute.name,
          path: '/about-us-settings-view',
          guards: [authGuard],
        ),
        _i16.RouteConfig(
          FavoriteViewRoute.name,
          path: '/favorite-view',
          guards: [authGuard],
        ),
        _i16.RouteConfig(
          NotificationViewRoute.name,
          path: '/notification-view',
          guards: [authGuard],
        ),
        _i16.RouteConfig(
          UnknownViewRoute.name,
          path: '/404',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashViewRoute extends _i16.PageRouteInfo<void> {
  const SplashViewRoute()
      : super(
          SplashViewRoute.name,
          path: '/',
        );

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.RegisterView]
class RegisterViewRoute extends _i16.PageRouteInfo<void> {
  const RegisterViewRoute()
      : super(
          RegisterViewRoute.name,
          path: '/register-view',
        );

  static const String name = 'RegisterView';
}

/// generated route for
/// [_i3.LoginView]
class LoginViewRoute extends _i16.PageRouteInfo<void> {
  const LoginViewRoute()
      : super(
          LoginViewRoute.name,
          path: '/login-view',
        );

  static const String name = 'LoginView';
}

/// generated route for
/// [_i4.HomeView]
class HomeViewRoute extends _i16.PageRouteInfo<HomeViewArgs> {
  HomeViewRoute({
    _i18.Key? key,
    required String userId,
  }) : super(
          HomeViewRoute.name,
          path: '/home-view',
          args: HomeViewArgs(
            key: key,
            userId: userId,
          ),
        );

  static const String name = 'HomeView';
}

class HomeViewArgs {
  const HomeViewArgs({
    this.key,
    required this.userId,
  });

  final _i18.Key? key;

  final String userId;

  @override
  String toString() {
    return 'HomeViewArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i5.DonationView]
class DonationViewRoute extends _i16.PageRouteInfo<void> {
  const DonationViewRoute()
      : super(
          DonationViewRoute.name,
          path: '/donation-view',
        );

  static const String name = 'DonationView';
}

/// generated route for
/// [_i6.HelpSettingsView]
class HelpSettingsViewRoute extends _i16.PageRouteInfo<void> {
  const HelpSettingsViewRoute()
      : super(
          HelpSettingsViewRoute.name,
          path: '/help-settings-view',
        );

  static const String name = 'HelpSettingsView';
}

/// generated route for
/// [_i7.AccountSettingsView]
class AccountSettingsViewRoute extends _i16.PageRouteInfo<void> {
  const AccountSettingsViewRoute()
      : super(
          AccountSettingsViewRoute.name,
          path: '/account-settings-view',
        );

  static const String name = 'AccountSettingsView';
}

/// generated route for
/// [_i8.SecuritySettingsView]
class SecuritySettingsViewRoute extends _i16.PageRouteInfo<void> {
  const SecuritySettingsViewRoute()
      : super(
          SecuritySettingsViewRoute.name,
          path: '/security-settings-view',
        );

  static const String name = 'SecuritySettingsView';
}

/// generated route for
/// [_i9.AppSettingsView]
class AppSettingsViewRoute extends _i16.PageRouteInfo<void> {
  const AppSettingsViewRoute()
      : super(
          AppSettingsViewRoute.name,
          path: '/app-settings-view',
        );

  static const String name = 'AppSettingsView';
}

/// generated route for
/// [_i10.AboutUsSettingsView]
class AboutUsSettingsViewRoute extends _i16.PageRouteInfo<void> {
  const AboutUsSettingsViewRoute()
      : super(
          AboutUsSettingsViewRoute.name,
          path: '/about-us-settings-view',
        );

  static const String name = 'AboutUsSettingsView';
}

/// generated route for
/// [_i11.FavoriteView]
class FavoriteViewRoute extends _i16.PageRouteInfo<void> {
  const FavoriteViewRoute()
      : super(
          FavoriteViewRoute.name,
          path: '/favorite-view',
        );

  static const String name = 'FavoriteView';
}

/// generated route for
/// [_i12.NotificationView]
class NotificationViewRoute extends _i16.PageRouteInfo<void> {
  const NotificationViewRoute()
      : super(
          NotificationViewRoute.name,
          path: '/notification-view',
        );

  static const String name = 'NotificationView';
}

/// generated route for
/// [_i13.UnknownView]
class UnknownViewRoute extends _i16.PageRouteInfo<void> {
  const UnknownViewRoute()
      : super(
          UnknownViewRoute.name,
          path: '/404',
        );

  static const String name = 'UnknownView';
}

extension RouterStateExtension on _i14.RouterService {
  Future<dynamic> navigateToSplashView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const SplashViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToRegisterView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const RegisterViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToLoginView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const LoginViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView({
    _i18.Key? key,
    required String userId,
    void Function(_i16.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      HomeViewRoute(
        key: key,
        userId: userId,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToDonationView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const DonationViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHelpSettingsView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HelpSettingsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToAccountSettingsView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AccountSettingsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToSecuritySettingsView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const SecuritySettingsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToAppSettingsView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AppSettingsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToAboutUsSettingsView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AboutUsSettingsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToFavoriteView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const FavoriteViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToNotificationView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const NotificationViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToUnknownView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSplashView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const SplashViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithRegisterView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const RegisterViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithLoginView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const LoginViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView({
    _i18.Key? key,
    required String userId,
    void Function(_i16.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      HomeViewRoute(
        key: key,
        userId: userId,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithDonationView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const DonationViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHelpSettingsView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HelpSettingsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAccountSettingsView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AccountSettingsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSecuritySettingsView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const SecuritySettingsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAppSettingsView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AppSettingsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAboutUsSettingsView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AboutUsSettingsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithFavoriteView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const FavoriteViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithNotificationView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const NotificationViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithUnknownView(
      {void Function(_i16.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }
}
