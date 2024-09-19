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
        // Primeira linha: Nome completo
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400], // Define o fundo como roxo
                height: 100,
                child: const Center(
                  child: Text(
                    'Maria Marcela Sousa Alves',
                    style: TextStyle(
                      color: Colors.white, // Texto em branco
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        // Segunda linha: Data da prova
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors
                    .greenAccent[200], // Fundo verde limão (tonalidade 200)
                height: 100,
                child: const Center(
                  child: Text(
                    '19/09/2024',
                    style: TextStyle(
                      color: Colors.white, // Texto em branco
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        // Terceira linha com 4 colunas
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Coluna 1: Dois ícones (superior e inferior)
              Expanded(
                child: Container(
                  color: Colors.green[400],
                  child: Column(
                    children: [
                      const Icon(Icons.star,
                          size: 50, color: Colors.white), // Ícone branco
                      const Spacer(),
                      const Icon(Icons.favorite,
                          size: 50, color: Colors.white), // Ícone branco
                    ],
                  ),
                ),
              ),
              // Coluna 2: Um ícone
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: const Icon(Icons.access_alarm,
                      size: 50, color: Colors.white), // Ícone branco
                ),
              ),
              // Coluna 3: Um ícone
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child: const Icon(Icons.home,
                      size: 50, color: Colors.white), // Ícone branco
                ),
              ),
              // Coluna 4: Um ícone
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: const Icon(Icons.settings,
                      size: 50, color: Colors.white), // Ícone branco
                ),
              ),
            ],
          ),
        ),
        // Última linha: Nome da turma
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.orange[400], // Fundo laranja
                height: 100,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      'Sistemas de Informação',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                        color: Colors.black, // Texto preto
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
