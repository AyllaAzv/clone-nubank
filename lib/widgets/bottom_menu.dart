import 'package:clone_nubank/widgets/item_menu_bottom.dart';
import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  final bool showMenu;

  const BottomMenu({Key key, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;

    return AnimatedPositioned(
        duration: Duration(microseconds: 200),
        bottom: !showMenu ? 0 + _screenHeigth * .01 : 0,
        left: 0,
        right: 0,
        child: IgnorePointer(
          ignoring: showMenu,
          child: AnimatedOpacity(
            duration: Duration(microseconds: 200),
            opacity: showMenu ? 0 : 1,
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
                  ItemMenuBottom(icon: Icons.attach_money, text: 'Transferir'),
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
        ));
  }
}
