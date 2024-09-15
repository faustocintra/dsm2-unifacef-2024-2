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

// Layout personalizado conforme as instruções fornecidas
class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primeira linha com o nome completo, centralizado e estilizado
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                height: 150,
                child: const Center(
                  child: Text(
                    'Kauan Eduardo Rodrigues do Carmo', // Nome completo
                    style: TextStyle(
                      color: Colors.white, // Texto branco
                      fontSize: 30, // Tamanho da fonte
                      fontWeight: FontWeight.bold, // Negrito
                    ),
                    textAlign: TextAlign.center, // Centralizado
                  ),
                ),
              ),
            )
          ],
        ),
        // Segunda linha com a data da prova, centralizado
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 150,
                child: const Center(
                  child: Text(
                    '19/09/2024', // Data da prova
                    style: TextStyle(
                      color: Colors.orangeAccent, // Cor laranja escuro (tonalidade 300)
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
        // Linhas com ícones e cores adicionadas
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: Column(
                    children: const [
                      Icon(Icons.home, size: 50), // Ícone superior
                      Spacer(), // Espaçamento entre ícones
                      Icon(Icons.star, size: 50), // Ícone inferior
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child: const Center(
                    child: Icon(Icons.favorite, size: 50), // Ícone central
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: const Center(
                    child: Icon(Icons.settings, size: 50), // Ícone central
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal[400], // Nova cor adicionada (tonalidade 400)
                  child: const Center(
                    child: Icon(Icons.person, size: 50), // Ícone central
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
                color: Colors.red[400], // Cor para a última linha (tonalidade 400)
                height: 100,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Engenharia de Software', // Nome da turma
                    style: TextStyle(
                      fontStyle: FontStyle.italic, // Estilo itálico
                      fontSize: 25, // Tamanho da fonte
                    ),
                    textAlign: TextAlign.right,
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
