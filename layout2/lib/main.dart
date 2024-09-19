import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício de Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Exercício de Layout'),
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
              color: Colors.greenAccent[400],
              height: 150,
              alignment: Alignment.center, //alinhamento do conteudo
              padding: const EdgeInsets.all(16),
              child: const Text( // nome completo e estilo do nome
                'Breno Martins Oliveira',
                style: TextStyle(
                  fontSize: 30, //tamanho da fonte
                  fontWeight: FontWeight.bold, //negrito
                  color: Colors.white,
                ),
                textAlign: TextAlign.center, //alinhamento do texto
              ),
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container( 
              color: Colors.blueGrey[400],
              height: 150,
              alignment: Alignment.center, //alinhamento do conteudo
              padding: const EdgeInsets.all(16),
              child: Text( //data da prova e e estilo da data
                '19/09/2024',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lime[200], //cor
                ),
                textAlign: TextAlign.center, //alinhamento do texto
              ),
            ))
          ],
        ),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container(
              color: Colors.purple[400],
                child: const Column( //coluna com dois icones
                  children: [
                    Icon(Icons.android, size: 50, color: Colors.white), // cor do icone superior trocada para branca
                    Spacer(), // espaçamento dos ícones
                    Icon(Icons.smartphone, size: 50, color: Colors.white), // cor do icone inferior trocada para branca
                  ],
                )
              )),
            Expanded(child: Container(
              color: Colors.cyan[400],
                child: const Center( //coluna com um icone
                  child: Icon(Icons.code, size: 50, color: Colors.white), // cor do icone trocada para branca
                ),
              )),
            Expanded(child: Container(
              color: Colors.teal[400],
                child: const Center( //coluna com um icone
                  child: Icon(Icons.code_off, size: 50, color: Colors.white), // cor do icone trocada para branca
                ),
              )),
            Expanded(child: Container( 
              color: Colors.lime[400],
                child: const Center( //coluna com um icone
                  child: Icon(Icons.devices, size: 50, color: Colors.white), // cor do icone trocada para branca
                ),
              )),
          ],
        )),
        //linha adicional
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.red[400],
                            height: 150,
              alignment: Alignment.centerRight, //alinhamento do conteudo
              padding: const EdgeInsets.all(16),
              child: const Text( //nome da turma e estilização do texto
                'Engenharia de Software',
                style: TextStyle(
                  fontSize: 25, //tamanho da fonte
                  fontStyle: FontStyle.italic, //estilo da fonte
                  color: Colors.white,
                ),
                textAlign: TextAlign.right, //alinhamento do texto
              ),
            ))
          ],
        ),
      ],
    );
  }
}
