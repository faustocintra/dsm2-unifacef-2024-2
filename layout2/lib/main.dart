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
        // Primeira linha com nome completo
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                height: 150,
                child: const Center(
                  child: Text(
                    'Stella Barbosa de Souza',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Segunda linha com a data da prova
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 150,
                child: Center(
                  child: Text(
                    'Data: 19/09/2024',
                    style: TextStyle(
                      color: Color(0xFFFFA000), // Laranja escuro tonalidade 300
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Terceira linha com quatro colunas
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.star, size: 50),
                      Icon(Icons.star_border, size: 50),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child: const Center(
                    child: Icon(Icons.favorite, size: 50),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: const Center(
                    child: Icon(Icons.thumb_up, size: 50),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal[400],
                  child: const Center(
                    child: Icon(Icons.thumb_down, size: 50),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Última linha com o nome da turma
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red[400],
                height: 100,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Engenharia de Software',
                    style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
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
