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
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.purple[400],
              height: 150,
              //Adicionei o child nesse Expanded para criar o texto com o meu nome
              child: const Text(
                'Pedro Eduardo Garcia',
                textAlign: TextAlign.center, //Centralizando horizontalmente
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.green[400],
              height: 150,
              //Adicionei o child nesse Expanded para criar o texto com a data
              child: Text(
                '19/09/2024',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lime[200],
                  fontSize: 25,
                ),
              ),
            ))
          ],
        ),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              color: Colors.blue[400],
              child: const Icon(Icons.home),
            )),
            Expanded(
                child: Container(
              color: Colors.amber[400],
              child: const Icon(Icons.history),
            )),
            Expanded(
                child: Container(
              color: Colors.pink[400],
              //Adicionei um padding para que os icones nao ficassem colados na borda
              padding: const EdgeInsets.all(16),
              //Como essa coluna terá 2 ícones, adicionei uma column pra isso
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.more),
                  Icon(Icons.share),
                ],
              ),
            )),
            //Adicionando a quarta coluna
            Expanded(
                child: Container(
              color: Colors.blueGrey[400],
              child: const Icon(Icons.open_in_browser),
            )),
          ],
        )),
        //Adicionando a ultima linha solicitada
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.orange[400],
              height: 100,
              //Texto com o nome do curso
              child: const Text(
                'Engenharia de Software',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                ),
              ),
            ))
          ],
        ),
      ],
    );
  }
}