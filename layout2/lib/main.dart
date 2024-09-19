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
        //  Adicionando a primeira linha com nome
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                height: 150,
                child: const Center(
                  child: Text(
                    'Icaro Faria de Oliveira',
                    style: TextStyle(
                      color: Colors.white, // cor branca na fonte
                      fontSize: 30, // tamanho 30 da fonte
                      fontWeight: FontWeight.bold, // negrito
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 0), 
          ],
        ),
        // Segunda linha com data da prova
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 150,
                child: const Center(
                  child: Text( // data da prova
                    '19/09/2024',
                    style: TextStyle(
                      color: Colors.deepOrangeAccent, // cor laranja escuro com tom 500
                      fontSize: 24, // fonte tamanho 24
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Terceira linha com ícones
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Primeira coluna com um ícone
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: const Icon(Icons.star, size: 50, color: Colors.white),
                ),
              ),
              // Segunda coluna com um ícone
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child: const Icon(Icons.home, size: 50, color: Colors.white),
                ),
              ),
              // Terceira coluna com um ícone
              Expanded(
                child: Container(
                  color: Colors.yellow[400],
                  child: const Icon(Icons.audiotrack, size: 50, color: Colors.white),
                ),
              ),
              // Quarta coluna com dois ícones
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.home, size: 50, color: Colors.white),
                      Icon(Icons.settings, size: 50, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // Quarta linha com nome da turma
        Container(
          color: Colors.red[300],
          height: 100,
          child: const Align(
            alignment: Alignment.centerRight,
            child: Text( // Adicionando o nome da turma
              '6º Semestre', 
              style: TextStyle(
                fontStyle: FontStyle.italic, // italico
                fontSize: 25, // fonte 25
              ),
            ),
          ),
        ),
      ],
    );
  }
}