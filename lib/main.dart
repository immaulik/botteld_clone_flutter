import 'package:botteld_clone_flutter/Screens/auth_screen.dart';

import '../Screens/main_screen.dart';

import '../Theme/mytheme.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      // ignore: prefer_const_constructors
      home: AuthScreen(),
    );
  }
}
