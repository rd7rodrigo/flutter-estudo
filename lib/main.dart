import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'button.dart';
import 'topo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Este widget é a raiz do seu aplicativo.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Flutter Demo Casa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // Esse widget é a home page do seu aplicativo. É stateful, significando
  //  que tem um objeto State (definido abaixo) que contém campos que afetam como parece.
  //  Esta classe é a configuração do estado. Ele contém os valores (neste
  //  caso o título) fornecido pelo pai (neste caso, o widget App) e
  //  usado pelo método de compilação do estado. Campos em uma subclasse de widget são
  //  sempre marcado como "final".
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     // Esta chamada para setState diz ao framework Flutter que algo tem
//        // alterado neste estado, o que faz com que execute novamente o método de construção abaixo
//        // para que a exibição possa refletir os valores atualizados. Se nós mudássemos
//        // _counter sem chamar setState (), então o método de compilação não seria
//        // chamou novamente, e nada parece acontecer.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
//      // Esse método é executado novamente toda vez que setState é chamado, por exemplo, como concluído
//      // pelo método _incrementCounter acima.
//      // A estrutura Flutter foi otimizada para executar novamente os métodos de construção
//      // rápido, para que você possa reconstruir qualquer coisa que precise ser atualizada
//      // do que ter que alterar individualmente instâncias de widgets.
    return Scaffold(
      appBar: PreferredSize(
        child: Topo(),
        preferredSize: Size.fromHeight(120.0),  
      ),
      body: Center(
        // Center é um widget de layout. Leva um único filho e o posiciona
//          // no meio do pai.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Olá Leonel!',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
            ),
            Padding(
              child: Text(
                'Fique a vontade para começar a salvar os clippings de notícias espalhadas por aí.'
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            ButtonText(text: "Botão 01", iconData: Icons.camera, color: Colors.white,),
            ButtonText(text: "Botão 02", iconData: Icons.insert_emoticon, color: Colors.white,),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 75.0,
        width: 75.0,
        // padding: EdgeInsets.all(2.0),
        margin: const EdgeInsets.all(3.0),
        decoration: myBoxDecoration(),
        child: FittedBox(
          
          child: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
           
            child: Container(
              decoration: borderIcon(),
              padding: EdgeInsets.all(2.0),
              child: Icon(
                Icons.camera, size: 37,color: Colors.white,
              ),
              // borderRadius: BorderRadius.circular(90.0),
            ),
            backgroundColor: Colors.white,
          
          ), // This trailing comma makes auto-formatting nicer for build methods.,
        )
      )
      ,bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 10.0, top: 5.0),
              height: 50.0, 
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        size: 25,
                        color: Colors.white,
                      ),
                      Text('Meu Perfil', style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
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
                        color: Colors.white,
                      ),
                      Text('Histórico', style: TextStyle(color: Colors.white, fontSize: 12)),
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
                        color: Colors.white,
                      ),
                      Text('Sincronizar', style: TextStyle(color: Colors.white, fontSize: 12)),
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
                        color: Colors.white,
                      ),
                      Text('Sair', style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
       
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.amber,
      width: 1, //                   <--- border width here
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(105.0) //     
    )
  );
}

BoxDecoration borderIcon() {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Colors.amberAccent, Colors.amber]
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(100.0) //     
    )
  );
}
