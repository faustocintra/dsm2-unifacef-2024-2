import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Definição principal do aplicativo Flutter
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Exercício Flutter Layout'),
    );
  }
}

// Página principal da aplicação
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Layout());
  }
}

// Layout da tela principal com as configurações solicitadas
class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primeira linha - Nome completo centralizado
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400], // Definir cor
                height: 150,
                child: const Center(
                  child: Text(
                    'Danilo Nogueira Silva',
                    style: TextStyle(
                      color: Colors.white, // Texto branco
                      fontSize: 30, // Tamanho da fonte 30
                      fontWeight: FontWeight.bold, // Negrito
                    ),
                    textAlign: TextAlign.center, // Centralizado
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
                color: Colors.orange[300], // Cor laranja tonalidade 300
                height: 150,
                child: const Center(
                  child: Text(
                    'Data da Prova: 19/09/2024',
                    style: TextStyle(
                      color: Colors.deepOrange, // Cor laranja escuro
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center, // Centralizado
                  ),
                ),
              ),
            ),
          ],
        ),
        // Terceira linha - Quatro colunas com grade de cores
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Primeira coluna com dois ícones e fundo colorido
              Expanded(
                child: Container(
                  color: Colors.red[400], // Cor de fundo da coluna
                  child: Column(
                    children: const [
                      Icon(Icons.favorite, size: 50, color: Colors.white), // Ícone superior
                      Spacer(), // Espaço entre ícones
                      Icon(Icons.star, size: 50, color: Colors.white), // Ícone inferior
                    ],
                  ),
                ),
              ),
              // Segunda coluna com um ícone e fundo colorido
              Expanded(
                child: Container(
                  color: Colors.blue[400], // Cor de fundo da coluna
                  child: const Center(
                    child: Icon(Icons.access_alarm, size: 50, color: Colors.white),
                  ),
                ),
              ),
              // Terceira coluna com um ícone e fundo colorido
              Expanded(
                child: Container(
                  color: Colors.green[400], // Cor de fundo da coluna
                  child: const Center(
                    child: Icon(Icons.cake, size: 50, color: Colors.white),
                  ),
                ),
              ),
              // Quarta coluna com um ícone e fundo colorido
              Expanded(
                child: Container(
                  color: Colors.yellow[400], // Cor de fundo da coluna
                  child: const Center(
                    child: Icon(Icons.email, size: 50, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Última linha - Nome da turma, alinhado à direita
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400], // Nova cor tonalidade 400
                height: 100,
                alignment: Alignment.centerRight, // Alinhamento à direita
                padding: const EdgeInsets.only(right: 20), // Espaçamento à direita
                child: const Text(
                  'Turma: Engenharia de Software',
                  style: TextStyle(
                    fontStyle: FontStyle.italic, // Texto em itálico
                    fontSize: 25, // Tamanho da fonte 25
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
