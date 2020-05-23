import 'package:clone_nubank/widgets/item_menu.dart';
import 'package:clone_nubank/widgets/item_menu_bottom.dart';
import 'package:clone_nubank/widgets/menu_app.dart';
import 'package:clone_nubank/widgets/my_app_bar.dart';
import 'package:clone_nubank/widgets/my_dots_app.dart';
import 'package:clone_nubank/widgets/page_view_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;
  double _yPosition;

  @override
  void initState() {
    super.initState();

    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;

    if (_yPosition == null) {
      _yPosition = _screenHeigth * .19;
    }

    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
                _yPosition =
                    _showMenu ? _screenHeigth * .86 : _screenHeigth * .19;
              });
            },
          ),
          MenuApp(
            top: _screenHeigth * .17,
            showMenu: _showMenu,
          ),
          PageViewApp(
            top: _yPosition,
            showMenu: _showMenu,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            onPanUpdate: (details) {
              double positionBottomLimit = _screenHeigth * .86;
              double positionTopLimit = _screenHeigth * .19;
              double midlePosition = positionBottomLimit - positionTopLimit;
              midlePosition = midlePosition / 2;
              setState(() {
                _yPosition += details.delta.dy;

                _yPosition = _yPosition < positionTopLimit
                    ? positionTopLimit
                    : _yPosition;

                _yPosition = _yPosition > positionBottomLimit
                    ? positionBottomLimit
                    : _yPosition;

                if (_yPosition != positionBottomLimit && details.delta.dy > 0) {
                  _yPosition =
                      _yPosition > positionTopLimit + midlePosition - 50
                          ? positionBottomLimit
                          : _yPosition;
                }

                if (_yPosition != positionTopLimit && details.delta.dy < 0) {
                  _yPosition = _yPosition < positionBottomLimit - midlePosition
                      ? positionTopLimit
                      : _yPosition;
                }

                if (_yPosition == positionBottomLimit) {
                  _showMenu = true;
                } else if (_yPosition == positionTopLimit) {
                  _showMenu = false;
                }
              });
            },
          ),
          MyDotsApp(
            currentIndex: _currentIndex,
            top: _screenHeigth * .74,
            showMenu: _showMenu,
          ),
          AnimatedPositioned(
            duration: Duration(microseconds: 200),
            bottom: !_showMenu ? 0 + _screenHeigth * .01 : 0,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              duration: Duration(microseconds: 200),
              opacity: _showMenu ? 0 : 1,
              child: Container(
                height: _screenHeigth * .21,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ItemMenuBottom(
                        icon: Icons.person_add, text: 'Indicar amigos'),
                    ItemMenuBottom(
                        icon: Icons.phone_android, text: 'Recarga de celular'),
                    ItemMenuBottom(icon: Icons.chat, text: 'Cobrar'),
                    ItemMenuBottom(
                        icon: Icons.monetization_on, text: 'Empréstimos'),
                    ItemMenuBottom(icon: Icons.attach_money, text: 'Depositar'),
                    ItemMenuBottom(
                        icon: Icons.attach_money, text: 'Transferir'),
                    ItemMenuBottom(
                        icon: Icons.attach_money, text: 'Ajustar limite'),
                    ItemMenuBottom(icon: Icons.attach_money, text: 'Me ajuda'),
                    ItemMenuBottom(icon: Icons.attach_money, text: 'Pagar'),
                    ItemMenuBottom(
                        icon: Icons.attach_money, text: 'Bloquear cartão'),
                    ItemMenuBottom(
                        icon: Icons.attach_money, text: 'Cartão virtual'),
                    ItemMenuBottom(
                        icon: Icons.attach_money, text: 'Organizar atalhos'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
