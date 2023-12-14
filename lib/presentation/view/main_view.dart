import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';

//TODO:
//https://blog.devgenius.io/send-emails-without-backend-in-flutter-48d0c506ab4c - FOR EMAIL
class MainView extends StatelessWidget {
  static const String title = 'Vault Pass';

  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.homeView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gilroy',
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w900,
            color: Colors.red,
          ),
        ),
      ),
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
