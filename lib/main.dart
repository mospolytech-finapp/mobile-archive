import 'package:flutter/material.dart';
import 'package:finapp/app/app.dart';
import 'package:provider/provider.dart';

import 'app/model/AuthModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthModel(),
      child: const MaterialApp(
        home: App(),
      ),
    ),
  );
}