import 'package:clone_nubank/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.purple[800],
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone Nubank',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.purple, brightness: Brightness.dark),
      home: SplashPage(),
    );
  }
}
