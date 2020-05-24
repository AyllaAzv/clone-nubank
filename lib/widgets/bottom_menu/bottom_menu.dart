import 'package:clone_nubank/widgets/bottom_menu/item_menu_bottom.dart';
import 'package:flutter/material.dart';

class BottomMenu extends StatefulWidget {
  final bool showMenu;

  const BottomMenu({Key key, this.showMenu}) : super(key: key);

  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
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
          duration: Duration(microseconds: 200),
          bottom: !widget.showMenu ? 0 + _screenHeigth * .01 : 0,
          right: value * -1,
          left: value,
          child: IgnorePointer(
            ignoring: widget.showMenu,
            child: AnimatedOpacity(
              duration: Duration(microseconds: 200),
              opacity: widget.showMenu ? 0 : 1,
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
        );
      },
    );
  }
}
