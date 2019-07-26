import 'package:flutter/material.dart';
import 'package:widgets/novo-clipping.dart';

class Botton extends StatefulWidget {
  @override
  _BottonState createState() => _BottonState();
}

class _BottonState extends State<Botton> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 10.0, top: 5.0),
              height: 50.0, 
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    // color: null,
                    child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.account_circle,
                            size: 25,
                            color: Colors.amber,
                          ),
                          Text('Meu Perfil', style: TextStyle(color: Colors.grey, fontSize: 12)),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NovoClipping()),
                        );
                      },
                  ),
                  
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0, top: 5.0),
              height: 50.0, 
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.layers,
                        size: 25,
                        color: Colors.amber,
                      ),
                      Text('Histórico', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 105.0, top: 5.0),
              height: 50.0, 
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.sync,
                        size: 25,
                        color: Colors.amber,
                      ),
                      Text('Sincronizar', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 5.0),
              height: 50.0, 
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.exit_to_app ,
                        size: 25,
                        color: Colors.amber,
                      ),
                      Text('Sair', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
       
      ),
    );
  }
}