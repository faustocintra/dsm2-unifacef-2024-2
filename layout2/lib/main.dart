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
        // Primeira linha com nome
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
          ],
        ),
        // Segunda linha com data da prova
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[900], // cor de fundo escura para contraste
                height: 150,
                child: const Center(
                  child: Text(
                    '19/09/2024',
                    style: TextStyle(
                      color: Color(0xFFE6FF00), // cor verde limão tonalidade 200
                      fontSize: 24, // tamanho da fonte 24
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
                  child: const Icon(Icons.star, size: 50, color: Colors.white), // ícone na cor branca
                ),
              ),
              // Segunda coluna com um ícone
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child: const Icon(Icons.home, size: 50, color: Colors.white), // ícone na cor branca
                ),
              ),
              // Terceira coluna com um ícone
              Expanded(
                child: Container(
                  color: Colors.yellow[400],
                  child: const Icon(Icons.audiotrack, size: 50, color: Colors.white), // ícone na cor branca
                ),
              ),
              // Quarta coluna com dois ícones
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.home, size: 50, color: Colors.white), // ícone na cor branca
                      Icon(Icons.settings, size: 50, color: Colors.white), // ícone na cor branca
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
            child: Text(
              '6º Semestre', // nome da turma
              style: TextStyle(
                fontStyle: FontStyle.italic, // estilo itálico
                fontSize: 25, // fonte tamanho 25
              ),
            ),
          ),
        ),
      ],
    );
  }
}
