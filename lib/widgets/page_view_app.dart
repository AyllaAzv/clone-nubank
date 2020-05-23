import 'package:clone_nubank/widgets/card_app.dart';
import 'package:flutter/material.dart';

class PageViewApp extends StatelessWidget {
  final ValueChanged<int> onChanged;

  PageViewApp({this.onChanged});

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;

    return Positioned(
      top: _screenHeigth * .19,
      height: _screenHeigth * .55,
      right: 0,
      left: 0,
      child: PageView(
        onPageChanged: onChanged,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          CardApp(),
          CardApp(),
          CardApp(),
        ],
      ),
    );
  }
}
