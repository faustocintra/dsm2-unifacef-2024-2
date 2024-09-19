import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Classe principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // Configuração do tema e a página inicial do app
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

// Classe da página inicial
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

        // Primeira linha: Nome completo centralizado
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.purpleAccent[400],
              height: 100,
                  child: const Text(
                    'Ana Carolina Neias Ribeiro',
                    textAlign: TextAlign.center, // Texto centralizado horizontalmente
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            )),
          ],
        ),

        // Segunda linha: Data da prova centralizada
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.deepOrange[400],
              height: 100,
                  child: Text(
                    'Data da Prova: 19/09/2024',
                    textAlign: TextAlign.center, // Texto centralizado horizontalmente
                    style: TextStyle(
                      color: Colors.lightGreenAccent.shade200,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
    
            ))
          ],
        ),

        // Terceira linha: Colunas com ícones
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // Primeira coluna com dois ícones
            Expanded(child: Container(
            color: Colors.blue[400],
            child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.star, size: 50, color: Colors.white),
                      Icon(Icons.favorite, size: 50, color: Colors.white),
                    ],
                  ),
            )),

            // Segunda coluna com um ícone
            Expanded(
            child: Container(color: Colors.amber[400],
            child: const Center( // Ícones centralizados
                    child: Icon(Icons.thumb_up, size: 50, color: Colors.white),
                  ),
            )),

            // Terceira coluna com um ícone
            Expanded(
            child: Container(color: Colors.pink[400],
            child: const Center( // Ícones centralizados
                    child: Icon(Icons.lightbulb, size: 50, color: Colors.white),
                  ),
            )),

            // Quarta coluna com um ícone
            Expanded(
            child: Container(color: Colors.tealAccent[400],
            child: const Center( // Ícones centralizados
                    child: Icon(Icons.home, size: 50, color: Colors.white),
                  ),
            )),
          ],
        )),

        // Quarta linha: Nome da turma à direita
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.orange[400],
              height: 100,
              alignment: Alignment.centerRight,
                child: const Text(
                  'Engenharia de Software',
                  textAlign: TextAlign.right, // Texto alinhado a direita
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
            ))
          ],
        ),
      ],
    );
  }
}
