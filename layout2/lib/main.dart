import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Layout());
  }
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    //Coluna principal, a que faz a tela como um todo
    return Column(
      children: [
        //A primeira linha, onde ficará o meu nome
        Row(
          children: [
           //Expanded para utilizar todo o espaço que consegue 
            Expanded(
              //Definindo Container para o conteúdo
              child: Container(
                //Características do Container, incluindo cor e altura, além da definição de um child para o texto
                color: Colors.purple[400],
                height: 150,
                //Center para centralizar o conteúdo
                child: Center(
                  //Definição do texto
                  child: Text(
                    'Yune Uzuki',
                    //Estilo do texto
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        //Segunda linha, não estarei comentando todos os elementos devido a ser praticamente o mesmo que a primeira
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.green[400],
              height: 150,
              child: Center(
                  child: Text(
                    '19 de Setembro de 2024',
                    style: TextStyle(
                      color: Colors.orange[300],
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ))
          ],
        ),
        Expanded(
          child: Row(
            //Garante que os filhos vão se espaçar com tamanho igual
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Coluna 1
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: Column(
                    //Faz com que os 2 ícones se espaçem igualmente, nesse caso, assim um fica em cima, o outro embaixo devido a declaração de coluna
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     //Utilizando o recurso 'Icons' do Dart 
                      Icon(Icons.star),
                      Icon(Icons.favorite), 
                    ],
                  ),
                )
              ),
              //Coluna 2
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child: Center(
                    child: Icon(Icons.home),
                  )
                )
              ),
              //Coluna 3
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: Center(
                    child: Icon(Icons.settings),
                  )
                )
              ),
              //Coluna 4
              Expanded(
                child: Container(
                  color: Colors.red[400],
                  child: Center(
                    child: Icon(Icons.person),
                  )
                )
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.cyan[400],
                height: 150,
                child: Text(
                   'Engenharia de Software, 6o Semestre',
                   style: TextStyle(
                     color: Colors.white,
                     fontStyle: FontStyle.italic,
                     fontSize: 25,
                   ),
                   //textAlign para alinhar o texto a direita
                   textAlign: TextAlign.right, 
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}