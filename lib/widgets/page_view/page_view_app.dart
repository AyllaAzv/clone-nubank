import 'package:clone_nubank/widgets/cards/card_app.dart';
import 'package:clone_nubank/widgets/cards/first_card.dart';
import 'package:clone_nubank/widgets/cards/second_card.dart';
import 'package:clone_nubank/widgets/cards/third_card.dart';
import 'package:flutter/material.dart';

class PageViewApp extends StatefulWidget {
  final ValueChanged<int> onChanged;
  final double top;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  PageViewApp({this.onChanged, this.top, this.onPanUpdate, this.showMenu});

  @override
  _PageViewAppState createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  Tween<double> _tween;

  @override
  void initState() {
    super.initState();

    _tween = Tween<double>(begin: 150.0, end: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;

    return TweenAnimationBuilder<double>(
      tween: _tween,
      duration: Duration(microseconds: 300),
      curve: Curves.easeOutExpo,
      builder: (context, value, child) {
        return AnimatedPositioned(
          duration: Duration(microseconds: 150),
          curve: Curves.easeOut,
          top: widget.top,
          height: _screenHeigth * .55,
          right: value * -1,
          left: value,
          child: GestureDetector(
            onPanUpdate: widget.onPanUpdate,
            child: PageView(
              onPageChanged: widget.onChanged,
              physics: widget.showMenu
                  ? NeverScrollableScrollPhysics()
                  : BouncingScrollPhysics(),
              children: <Widget>[
                CardApp(child: FirstCard()),
                CardApp(child: SecondCard()),
                CardApp(child: ThirdCard()),
              ],
            ),
          ),
        );
      },
    );
  }
}
