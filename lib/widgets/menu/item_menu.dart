import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  ItemMenu({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7, color: Colors.white54),
          top: BorderSide(width: 0.7, color: Colors.white54),
        ),
      ),
      child: RaisedButton(
        color: Colors.purple[800],
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.purple[900],
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                SizedBox(width: 15),
                Text(text, style: TextStyle(fontSize: 15)),
              ],
            ),
            Icon(Icons.chevron_right, size: 20),
          ],
        ),
      ),
    );
  }
}
