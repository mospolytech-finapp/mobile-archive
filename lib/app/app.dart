import 'package:flutter/material.dart';
import 'package:finapp/app/components/app_navigator.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finapp',
      routes: AppNavigator.getRoutes(),
      initialRoute: AppNavigator.getInitialRoute(),
    );
  }
}
