import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdCard extends StatefulWidget {
  @override
  _ThirdCardState createState() => _ThirdCardState();
}

class _ThirdCardState extends State<ThirdCard> {
  bool buttonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/gift-outline.svg',
            color: Colors.black,
            semanticsLabel: 'presente',
          ),
          Column(
            children: <Widget>[
              Text(
                'Nubank Rewards',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.',
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 0.7,
                color: Colors.purple[800],
              ),
            ),
            child: RaisedButton(
              color: Colors.transparent,
              onHighlightChanged: (pressed) {
                setState(() {
                  buttonPressed = pressed;
                });
              },
              highlightColor: Colors.purple[800],
              elevation: 0,
              disabledElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'ATIVE O SEU REWARDS',
                style: TextStyle(
                  color: buttonPressed ? Colors.white : Colors.purple[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
