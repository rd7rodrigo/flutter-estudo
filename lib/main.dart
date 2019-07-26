import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'botton.dart';
// import 'button.dart';
import 'listmenu.dart';
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
      body: Hero(
        tag: 'Main',
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10), 
                child: Text(
                  'Olá Leonel!',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),
                ),
              ),
              
              Padding(
                child: Text(
                  'Fique a vontade para começar a salvar os clippings de notícias espalhadas por aí.'
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
              ),
              ListMenu(text: "Capturar", subtitulo: "Capture os clipping de notícias pelo mundo.", iconData: Icons.camera, color: Colors.white,),
              ListMenu(text: "Capturados", subtitulo: "Veja os clippings capturados pela equipe", iconData: Icons.layers, color: Colors.white,),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 75.0,
        width: 75.0,
        decoration: myBoxDecoration(),
        child: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
            child: Container(
              decoration: borderIcon(),
              padding: EdgeInsets.all(2.0),
              child: Icon(
                Icons.camera, size: 51,color: Colors.white,
              ),
            ),
            backgroundColor: Colors.white,
        )
      )
      ,bottomNavigationBar: Botton(),
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
