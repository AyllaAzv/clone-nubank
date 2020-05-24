import 'package:clone_nubank/widgets/item_menu.dart';
import 'package:flutter/material.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  MenuApp({this.top, this.showMenu});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(microseconds: 100),
        opacity: showMenu ? 1 : 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.67,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.network(
                    'https://pngimg.com/uploads/qr_code/qr_code_PNG2.png',
                    height: 120,
                    color: Colors.white,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Banco ',
                      children: [
                        TextSpan(
                          text: '260 - Nu Pagamentos S.A',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text.rich(
                    TextSpan(
                      text: 'Agência ',
                      children: [
                        TextSpan(
                          text: '0001',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text.rich(
                    TextSpan(
                      text: 'Conta ',
                      children: [
                        TextSpan(
                          text: '000000-0',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: <Widget>[
                    ItemMenu(icon: Icons.info_outline, text: 'Me ajuda'),
                    ItemMenu(icon: Icons.person_outline, text: 'Perfil'),
                    ItemMenu(icon: Icons.settings, text: 'Configurar conta'),
                    ItemMenu(
                        icon: Icons.credit_card, text: 'Configurar Cartão'),
                    ItemMenu(
                        icon: Icons.store_mall_directory,
                        text: 'Pedir conta PJ'),
                    ItemMenu(
                        icon: Icons.phone_android,
                        text: 'Configurações do app'),
                    SizedBox(height: 25),
                    Container(
                      height: 35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.7, color: Colors.white54),
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
                          child: Text(
                            'SAIR DO APP',
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
