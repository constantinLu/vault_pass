import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:vault_pass/common/package/sizeup.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';
import 'package:vault_pass/infrastructure/setup/theme_setup.dart';

import '../../infrastructure/setup/app.locator.dart';

class MainView extends StatelessWidget {
  static const String title = 'Vault Pass';

  MainView({super.key});

  final _themeService = locator<ThemeService>();

  @override
  Widget build(BuildContext context) {
    return Sizeup(
      builder: (BuildContext context, Orientation orientation, deviceType) {
        return ThemeBuilder(
          themes: getThemes(),
          darkTheme: primaryTheme,
          lightTheme: primaryTheme,
          defaultThemeMode: ThemeMode.dark,
          builder: (context, defaultTheme, darkTheme, themeMode) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Vault Pass',
            theme: darkTheme,
            darkTheme: darkTheme,
            themeMode: themeMode,
            routerDelegate: stackedRouter.delegate(),
            routeInformationParser: stackedRouter.defaultRouteParser(),
            // navigatorObservers: [
            //   StackedService.routeObserver,
            // ],
          ),
        );
      },
    );
  }
}
