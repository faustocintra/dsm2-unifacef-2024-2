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
        // Primeira linha - Nome centralizado
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.brown[400],
                height: 150,
                child: const Center(
                  child: Text(
                    'Luiz Mario Faleiros',
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
        // Segunda linha - Data da prova
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue[400],
                height: 150,
                child: const Center(
                  child: Text(
                    '19/09/2024',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Linhas com 4 colunas
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Primeira coluna com dois ícones
              Expanded(
                child: Container(
                  color: Colors.purple[400],
                  child: const Column(
                    children: [
                      Icon(Icons.home, size: 50),
                      Spacer(),
                      Icon(Icons.settings, size: 50),
                    ],
                  ),
                ),
              ),
              // Segunda coluna com ícone
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: const Center(
                    child: Icon(Icons.phone, size: 50),
                  ),
                ),
              ),
              // Terceira coluna com ícone
              Expanded(
                child: Container(
                  color: Colors.green[400],
                  child: const Center(
                    child: Icon(Icons.camera, size: 50),
                  ),
                ),
              ),
              // Quarta coluna com ícone
              Expanded(
                child: Container(
                  color: Colors.red[400],
                  child: const Center(
                    child: Icon(Icons.email, size: 50),
                  ),
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
                height: 80,
                color: Colors.grey[400],
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Turma 6° semestre de engenharia de software',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
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
