import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:finapp/app/app_model.dart';

class HomePageModel extends ChangeNotifier {
  void logOut(BuildContext context) {
    final appModel = Provider.of<AppModel>(context, listen: false);
    appModel.logOut(context);
  }
}
