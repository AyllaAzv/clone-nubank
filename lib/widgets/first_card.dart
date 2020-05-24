import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
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
                            children: <Widget>[
                              Icon(
                                Icons.credit_card,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Cartão de crédito',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
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
                                'FATURA ATUAL',
                                style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'R\$ 250,99',
                                style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontSize: 40,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Limite disponível',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    ' R\$ 1.200,55',
                                    style: TextStyle(
                                      color: Colors.lightGreen,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Container(
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(color: Colors.orange),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(color: Colors.lightBlue),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(color: Colors.lightGreen),
                          ),
                        ],
                      ),
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
                        Icons.shopping_cart,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 18),
                      Flexible(
                        child: Text(
                          'Compra mais recente em Amazon-Marketplace no valor de R\$ 100,00',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ),
                      SizedBox(width: 18),
                      Icon(
                        Icons.chevron_right,
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
}
