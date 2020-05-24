import 'package:clone_nubank/widgets/card_app.dart';
import 'package:clone_nubank/widgets/first_card.dart';
import 'package:flutter/material.dart';

class PageViewApp extends StatelessWidget {
  final ValueChanged<int> onChanged;
  final double top;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  PageViewApp({this.onChanged, this.top, this.onPanUpdate, this.showMenu});

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;

    return AnimatedPositioned(
      duration: Duration(microseconds: 150),
      curve: Curves.easeOut,
      top: top,
      height: _screenHeigth * .55,
      right: 0,
      left: 0,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(child: FirstCard(),),
            CardApp(),
            CardApp(),
          ],
        ),
      )
    );
  }
}
