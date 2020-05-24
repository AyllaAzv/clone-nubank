import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondCard extends StatefulWidget {
  @override
  _SecondCardState createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard> with AutomaticKeepAliveClientMixin {
  bool _showSaldo = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.monetization_on,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Conta',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showSaldo = !_showSaldo;
                                  });
                                },
                                child: SvgPicture.asset(
                                  !_showSaldo
                                      ? 'assets/icons/eye-off-outline.svg'
                                      : 'assets/icons/eye-outline.svg',
                                  color: Colors.grey,
                                  semanticsLabel: 'disabled-eye',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Saldo disponível',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 3),
                              _showSaldo
                                  ? Text(
                                      'R\$ 1,28',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 40,
                                      ),
                                    )
                                  : Container(
                                      height: 40,
                                      width: 220,
                                      color: Colors.grey[200],
                                    ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.transfer_within_a_station,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 18),
                      Flexible(
                        child: Text(
                          'Transferência de R\$ 100,00 para Ana Cleide Moreira da Cunha ontem',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(width: 18),
                      Icon(
                        Icons.chevron_right, //remove_from_queue
                        color: Colors.grey,
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
