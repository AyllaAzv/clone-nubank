import 'package:clone_nubank/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    _delay();
  }

  Future<void> _delay() async {
    await Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation animation,
              Animation secondaryAnimation) {
            return HomePage();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Center(
        child: Image.asset(
          'assets/images/nubank-logo-3.png',
          height: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
