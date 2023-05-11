import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:finapp/app/components/app_navigator.dart';
import 'package:finapp/app/components/app_themes.dart';
import 'package:finapp/app/app_model.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppModel(),
      child: Builder(builder: (context) {
        final appModel = Provider.of<AppModel>(context, listen: true);
        appModel.initApp();
        return FutureBuilder(
          future: appModel.initApp(),
          builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              return MaterialApp(
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', ''),
                  Locale('ru', ''),
                ],
                builder: (context, child) {
                  final mediaQueryData = MediaQuery.of(context);
                  return MediaQuery(data: mediaQueryData.copyWith(textScaleFactor: 1.0), child: child!);
                },
                debugShowCheckedModeBanner: false,
                title: 'Finapp',
                theme: AppTheme.apptheme(),
                routes: AppNavigator.getRoutes(),
                initialRoute: appModel.initialRoute,
              );
            }
          },
        );
      }),
    );
  }
}
