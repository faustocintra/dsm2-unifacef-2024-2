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
        // Primeira linha: Nome completo, centralizado
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                height: 150,
                child: const Center(
                  child: Text(
                    'Lucas Henrique Bizzi',
                    style: TextStyle(
                      color: Colors.white,
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
        // Segunda linha: Data da prova, centralizado
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 150,
                child: const Center(
                  child: Text(
                    'Data da Prova: 19/09/2024',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        // Terceira linha: Quatro colunas, sendo que uma possui dois ícones
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Primeira coluna com dois ícones (um no topo, outro no final)
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.star, size: 50, color: Colors.white),
                      Icon(Icons.favorite, size: 50, color: Colors.white),
                    ],
                  ),
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
                  color: Colors.pink[400],
                  child: const Icon(Icons.settings, size: 50, color: Colors.white),
                ),
              ),
              // Quarta coluna com um ícone
              Expanded(
                child: Container(
                  color: Colors.teal[400],
                  child: const Icon(Icons.person, size: 50, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        // Última linha: Nome da turma, alinhado à direita
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[400],
                height: 100,
                alignment: Alignment.centerRight,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Turma 2024',
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
