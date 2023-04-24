import 'package:flutter/material.dart';
import 'package:finapp/app/components/app_navigator.dart';
import 'package:finapp/app/components/app_themes.dart';
import 'components/secure_storage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isLoggedin = false;

  Future<void> _initApp() async {
    isLoggedin = await AppSecureStorage.checkToken();
  }

  @override
  void initState() {
    _initApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('ru', ''),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Finapp',
      theme: AppTheme.apptheme(),
      routes: AppNavigator.getRoutes(),
      initialRoute: AppNavigator.getInitialRoute(isLoggedin),
    );
  }
}
