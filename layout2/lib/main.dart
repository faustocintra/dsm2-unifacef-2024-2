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
                color: Colors.purple[400],
                height: 150,
                alignment: Alignment.center,
                child: const Text(
                  'Vinícius Kanashiro Almeida',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        // Segunda linha: Data da prova em verde limão
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 150,
                alignment: Alignment.center,
                child: const Text(
                  '19/09/2024',
                  style: TextStyle(
                    color: Colors.limeAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        // Terceira linha: Quatro colunas com cores diferentes, todas na tonalidade 400
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Primeira coluna com dois ícones
              Expanded(
                child: Container(
                  color: Colors.blue[400], // Cor da primeira coluna
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.star, size: 50, color: Colors.white),
                      Icon(Icons.star_border, size: 50, color: Colors.white),
                    ],
                  ),
                ),
              ),
              // Segunda coluna com um ícone
              Expanded(
                child: Container(
                  color: Colors.red[400], // Cor da segunda coluna
                  alignment: Alignment.center,
                  child: const Icon(Icons.ac_unit, size: 50, color: Colors.white),
                ),
              ),
              // Terceira coluna com um ícone
              Expanded(
                child: Container(
                  color: Colors.amber[400], // Cor da terceira coluna
                  alignment: Alignment.center,
                  child: const Icon(Icons.battery_full, size: 50, color: Colors.white),
                ),
              ),
              // Quarta coluna com um ícone
              Expanded(
                child: Container(
                  color: Colors.teal[400], // Cor da quarta coluna
                  alignment: Alignment.center,
                  child: const Icon(Icons.cake, size: 50, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        // Quarta linha: Nome da turma alinhado à direita
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.orange[400],
                height: 50,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 16),
                child: const Text(
                  'Engenharia de Software',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
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
