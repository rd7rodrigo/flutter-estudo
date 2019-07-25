import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        child: AppBar(
          title: Column(
            children: <Widget>[
              Icon(
                Icons.camera,
                size: 50.0,
              )
            ],
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end
          )
          ,
          actionsIconTheme: IconThemeData(color: Colors.amber),
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation menu',
          //   onPressed: null,
          // ),
          // Aqui pegamos o valor do objeto MyHomePage que foi criado por
  //          // o método App.build e use-o para definir nosso título de appbar.
          // title: Text(widget.title),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     tooltip: 'Buscar',
          //     onPressed: null,
          //   )
          // ],
        ), 
        preferredSize: Size.fromHeight(100.0),  
      ),
      body: Center(
        // Center é um widget de layout. Leva um único filho e o posiciona
//          // no meio do pai.
        child: Column(
          // Coluna também é widget de layout. É preciso uma lista de crianças e
//            // organiza-os verticalmente. Por padrão, ele dimensiona-se para caber
//            // crianças horizontalmente e tenta ser tão alto quanto seu pai.
//            //
//            // Invoque "debug painting" (pressione "p" no console, escolha o
//            // "Toggle Debug Paint" ação do Inspetor Flutter no Android
//            // Studio ou o comando "Toggle Debug Paint" no código do Visual Studio)
//            // para ver o wireframe de cada widget.
//            //
//            // A coluna tem várias propriedades para controlar como ele se dimensiona e
//            // como posiciona seus filhos. Aqui nós usamos mainAxisAlignment para
//            // centra os filhos verticalmente; o eixo principal aqui é a vertical
//            // eixo porque as colunas são verticais (o eixo transversal seria
//            // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ola haahha',
              style: TextStyle(color: Colors.amber, fontSize: 52)
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          
          child: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
           
            child: InkWell(
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.camera, size: 52,color: Colors.amber,
                  ),
                ),
                borderRadius: BorderRadius.circular(90.0),
            ),
            backgroundColor: Colors.white,
          
          ), // This trailing comma makes auto-formatting nicer for build methods.,
        )
      )
      ,bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        child: Container(
          height: 70.0, 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.verified_user,
                size: 37,
                color: Colors.white,
              ),
              Text('Meu Perfil', style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
