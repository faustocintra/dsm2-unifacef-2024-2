import 'package:flutter/material.dart';

void main() {
  // Função principal que inicia o aplicativo Flutter.
  runApp(const MyApp());
}

// A classe principal do aplicativo que estende StatelessWidget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp é um widget que configura o tema, título e página inicial do app.
    return MaterialApp(
      title: 'Flutter Demo', // Define o título do app.
      debugShowCheckedModeBanner: false, // Remove o banner de "debug" no canto superior direito.
      theme: ThemeData(
        // Configura o tema visual do app, com base em uma paleta de cores derivada de um "seed color".
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // Habilita o uso de elementos de design do Material 3.
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // Define a tela inicial como MyHomePage.
    );
  }
}

// Classe MyHomePage, que também estende StatelessWidget, define a estrutura da tela principal.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  
  // Título da página, que foi passado como argumento.
  final String title;

  @override
  Widget build(BuildContext context) {
    // Scaffold fornece uma estrutura básica para uma página, com barra de app, corpo, etc.
    return const Scaffold(
      // O corpo da página é o widget Layout, que define o conteúdo visual.
      body: Layout(),
    );
  }
}

// Classe Layout, também StatelessWidget, que define o layout da interface da página.
class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    // O layout organizado com uma Coluna de widgets.
    return Column(
      children: [
        // Primeira linha que contém um Container preenchendo toda a largura, com cor a roxa e altura de 150.
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                height: 150,
                // Centralizando o texto dentro do Container.
                child: Center(
                  child: Text(
                    'Ian Augusto Alvarenga',
                    style: TextStyle(
                      color: Colors.white, // Define cor da fonte como branca 
                      fontSize: 30, // Define o tamanho da fonte
                      fontWeight: FontWeight.bold, // Define fonte como em negrito
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Segunda linha, mas com cor de fundo verde e escrita verde limão.
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400], // Cor do fundo verde.
                height: 150, // Altura de 150.
                child: Center(
                  child: Text(
                    'Data da prova: 19/09/2024',
                    style: TextStyle(
                      color: Colors.lightGreen[200], // Define a cor da fonte
                      fontSize: 30, // Define o tamanho da fonte
                      fontWeight: FontWeight.bold, // Define como escrita em negrito 
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Este trecho do código é um Expanded que preenche o espaço restante da tela.
        Expanded(
          child: Row (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Primeira coluna com dois ícones, um em cima e outro embaixo.
              Expanded(
                child: Container(
                  color: Colors.blue[400], // cor de fundo azul 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribui os ícones no topo e embaixo.
                    children: const [
                      Align(
                        alignment: Alignment.topCenter, // indicando item superior
                        child: Icon(Icons.star, size: 40, color: Colors.white), // Ícone superior com cor branca e tamanho 40..
                      ),
                      Align(
                        alignment: Alignment.bottomCenter, // bottom indicando que é embaixo
                        child: Icon(Icons.star_border, size: 40, color: Colors.white), // Ícone inferior com cor branca e tamanho 40.
                      ),
                    ],
                  ),
                ),
              ),
              // Segunda coluna com um ícone centralizado.
              Expanded(
                child: Container(
                  color: Colors.amber[400], // cor de fundo amarela 
                  child:  Center(
                    child: Icon(Icons.favorite, size: 40, color: Colors.white), // Ícone central com cor branca e tamanho 40.
                  ),
                ),
              ),
              // Terceira coluna com um ícone centralizado.
              Expanded(
                child: Container(
                  color: Colors.pink[400], // cor de fundo rosa
                  child: Center(
                    child: Icon(Icons.thumb_up, size: 40, color: Colors.white), // Ícone central com cor branca e tamanho 40..
                  ),
                ),
              ),
              // Quarta coluna com um ícone centralizado.
              Expanded(
                child: Container(
                  color: Colors.redAccent[400], // cor de fundo vermelha
                  child: Center(
                    child: Icon(Icons.alarm, size: 40, color: Colors.white), // Ícone central com cor branca e tamanho 40.
                  ),
                ),
              ),
            ],
          ),
        ),
        // Quarta linha com fundo cinza e escrita em preto
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[400], // Cor do fundo cinza.
                height: 100, // Altura de 100.
                child: Align(
                  alignment: Alignment.centerRight, // Alinha o texto à direita.
                  child: Text(
                    'Engenharia de Software',
                    style: TextStyle(
                      color: Colors.black, // Define a cor
                      fontSize: 25, // Define o tamanho da letra 
                      fontStyle: FontStyle.italic, // Define o estilo como itálico.
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
