import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Ponto de entrada do aplicativo, que inicializa o app Flutter.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // MaterialApp define a estrutura principal da aplicação, com tema e a página inicial.
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Remove a marca de debug no canto superior direito.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Define o esquema de cores do tema.
        useMaterial3: true, // Ativa o uso do Material Design 3.
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // Define a página inicial.
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    // Scaffold organiza a estrutura da tela, com possibilidade de usar AppBar, Body, etc.
    return const Scaffold(body: Layout()); // O corpo da página chama o widget Layout.
  }
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    // Column organiza os widgets verticalmente (um abaixo do outro).
    return Column(
      children: [
        // Primeira linha - exibe o nome do estudante.
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza o conteúdo da linha.
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400], // Define a cor de fundo roxa para o container.
                height: 150, // Define a altura da caixa.
                child: const Center(
                  child: Text(
                    'Vitor Hugo de Oliveira', // Nome exibido no centro da primeira linha.
                    style: TextStyle(
                      color: Colors.white, // Cor do texto branca.
                      fontSize: 30, // Tamanho da fonte 30.
                      fontWeight: FontWeight.bold, // Define o texto como negrito.
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Segunda linha - exibe a data atualizada da prova.
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza o conteúdo da linha.
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400], // Cor de fundo verde.
                height: 150, // Define a altura da caixa.
                child: const Center(
                  child: Text(
                    '20/09/2024', // Data da prova atualizada.
                    style: TextStyle(
                      color: Colors.limeAccent, // Cor do texto alterada para verde limão (tonalidade 200).
                      fontSize: 24, // Tamanho da fonte 24.
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Terceira linha - exibe ícones com diferentes cores de fundo.
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch, // Faz com que os ícones preencham toda a altura disponível.
            children: [
              // Primeira coluna com ícone de estrela.
              Expanded(
                child: Container(
                  color: Colors.blue[400], // Cor de fundo azul.
                  child: const Icon(Icons.star, size: 50, color: Colors.white), // Ícone estrela na cor branca.
                ),
              ),
              // Segunda coluna com ícone de coração.
              Expanded(
                child: Container(
                  color: Colors.amber[400], // Cor de fundo amarelo.
                  child: const Icon(Icons.favorite, size: 50, color: Colors.white), // Ícone de coração na cor branca.
                ),
              ),
              // Terceira coluna com ícone de música.
              Expanded(
                child: Container(
                  color: Colors.red[400], // Cor de fundo vermelho.
                  child: const Icon(Icons.audiotrack, size: 50, color: Colors.white), // Ícone de música na cor branca.
                ),
              ),
              // Quarta coluna com dois ícones: casa e configurações.
              Expanded(
                child: Container(
                  color: Colors.pink[400], // Cor de fundo rosa.
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribui os ícones com espaço entre eles.
                    children: const [
                      Icon(Icons.home, size: 50, color: Colors.white), // Ícone de casa na cor branca.
                      Icon(Icons.settings, size: 50, color: Colors.white), // Ícone de configurações na cor branca.
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // Quarta linha - exibe o nome da turma no canto inferior direito.
        Container(
          color: Colors.grey[300], // Cor de fundo cinza claro.
          height: 100, // Define a altura do container.
          child: const Align(
            alignment: Alignment.centerRight, // Alinha o texto à direita.
            child: Text(
              '6º Semestre', // Texto que exibe o nome da turma.
              style: TextStyle(
                fontStyle: FontStyle.italic, // Define o estilo do texto como itálico.
                fontSize: 25, // Define o tamanho da fonte como 25.
              ),
            ),
          ),
        ),
      ],
    );
  }
}