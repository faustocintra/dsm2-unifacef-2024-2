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
    // O layout da página é organizado como uma Coluna de widgets.
    return Column(
      children: [
        // Primeira linha que contém um Container preenchendo toda a largura, com cor roxa e altura de 150.
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
        // Segunda linha semelhante, mas com cor verde.
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
                      color: Colors.deepOrange[300], 
                      fontSize: 30, 
                      fontWeight: FontWeight.bold, 
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
                  color: Colors.blue[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribui os ícones no topo e embaixo.
                    children: const [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Icon(Icons.star, size: 40, color: Colors.white), // Ícone superior.
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Icon(Icons.star_border, size: 40, color: Colors.white), // Ícone inferior.
                      ),
                    ],
                  ),
                ),
              ),
              // Segunda coluna com um ícone centralizado.
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child:  Center(
                    child: Icon(Icons.favorite, size: 40, color: Colors.white), // Ícone central.
                  ),
                ),
              ),
              // Terceira coluna com um ícone centralizado.
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: Center(
                    child: Icon(Icons.thumb_up, size: 40, color: Colors.white), // Ícone central.
                  ),
                ),
              ),
              // Quarta coluna com um ícone centralizado.
              Expanded(
                child: Container(
                  color: Colors.redAccent[400],
                  child: Center(
                    child: Icon(Icons.alarm, size: 40, color: Colors.white), // Ícone central.
                  ),
                ),
              ),
            ],
          ),
        ),
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
                      color: Colors.black,
                      fontSize: 25,
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
