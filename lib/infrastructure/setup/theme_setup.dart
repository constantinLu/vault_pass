import 'package:flutter/material.dart';
import 'package:raven/raven.dart';
import 'package:vault_pass/presentation/utils/palette.dart';

enum Shade {
  l, //light
  d, //dark
}

const _lightThemeColor = kcRevolutWhite;

const _darkThemeColor = blackFull;

const _splashColor = kcDevsiteTurcoise;

// helper methods
_appbarBackground(shade) => shade == Shade.d ? _darkThemeColor : _lightThemeColor;

_appbarIconColor(shade) => shade == Shade.d ? _darkThemeColor : _lightThemeColor;

_iconColor(shade) => shade == Shade.d ? _darkThemeColor : _lightThemeColor;

//themes

get primaryTheme => getThemes()[0];

List<ThemeData> getThemes() {
  return [
    /// ////////////////
    /// DARK THEME
    /// ///////////////
    ThemeData(
      brightness: Brightness.dark,
      fontFamily: 'TT-Commons',
      primaryColor: kcRevolutWhite,
      buttonTheme: const ButtonThemeData(buttonColor: kcRevolutWhite),
      splashColor: _splashColor,
      scaffoldBackgroundColor: _darkThemeColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: const ColorScheme.dark(),

      /// APP BAR
      appBarTheme: AppBarTheme(
        backgroundColor: _darkThemeColor,
        iconTheme: IconThemeData(color: _appbarIconColor(Shade.l)),
      ),

      /// ICON
      iconTheme: IconThemeData(
        color: _iconColor(Shade.l),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: kcRevolutWhite,
        foregroundColor: kcBlackFull,
      ),
      //
      // /// TEXT
      // textTheme: const TextTheme(
      //   //DISPLAY
      //   displayLarge: TextStyle(color: kcWhiteCultured),
      //   displayMedium: TextStyle(color: kcWhiteCultured),
      //   displaySmall: TextStyle(color: kcWhiteCultured),
      //   //HEADLINE
      //   headlineLarge: TextStyle(color: kcWhiteCultured),
      //   headlineMedium: TextStyle(color: kcWhiteCultured),
      //   headlineSmall: TextStyle(color: kcWhiteCultured),
      //   //TITLE
      //   titleLarge: TextStyle(color: kcWhiteCultured),
      //   titleMedium: TextStyle(color: kcWhiteCultured),
      //   titleSmall: TextStyle(color: kcWhiteCultured),
      //   //LABEL
      //   labelLarge: TextStyle(color: kcWhiteCultured),
      //   labelMedium: TextStyle(color: kcWhiteCultured),
      //   labelSmall: TextStyle(color: kcWhiteCultured),
      //   //BODY
      //   bodyLarge: TextStyle(color: kcWhiteCultured),
      //   bodyMedium: TextStyle(color: kcWhiteCultured),
      //   bodySmall: TextStyle(color: kcWhiteCultured),
      // ),
    )
  ];
}
