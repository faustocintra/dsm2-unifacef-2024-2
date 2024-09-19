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
        // Primeira linha - Nome completo, centralizado - Cor Azul
        Row(
          children: [
            Expanded(
              child: Container( //child que controla toda a primeira linha
                color: Colors.blue[400],
                height: 150,
                child: const Center( //Child que controla a parte do nome
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
        // Segunda linha - Data da prova, centralizado - Cor rosa
        Row(
          children: [
            Expanded(
              child: Container(// child que controla a segunda linha
                color: Colors.pink[400],
                height: 150,
                child: const Center(//child que controla a parte da data
                  child: Text(
                    'Data da Prova: 19/09/2024',
                    style: TextStyle(
                      color: Colors.lime,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        // Terceira linha - Quatro colunas - Três linhas que possuem um ícone, e uma que possui dois ícones
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [//children que controla toda a linha com as quatro colunas
              // Primeira coluna - Um ícone na cor branca (casa) - Cinza
              Expanded(
                child: Container( //child primeira coluna
                  color: Colors.grey[400],
                  child: const Icon(Icons.home, size: 50, color: Colors.white),
                ),
              ),
              // Segunda coluna - Dois ícones (um no topo, outro no final(estrela e coração)) - Amarelo
              Expanded(
                child: Container(//child segunda coluna
                  color: Colors.yellow[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.star, size: 50, color: Colors.white),
                      Icon(Icons.favorite, size: 50, color: Colors.white),
                    ],
                  ),
                ),
              ),
              // Terceira coluna - Um ícone - Azul
              Expanded(//child terceira coluna
                child: Container(
                  color: Colors.blue[400],
                  child: const Icon(Icons.person, size: 50, color: Colors.white),
                ),
              ),
              // Quarta coluna - Um ícone - Verde
              Expanded(//child quarta coluna
                child: Container(
                  color: Colors.teal[400],
                  child: const Icon(Icons.exit_to_app, size: 50, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        // Última linha - Nome da turma, alinhado à direita - Vermelho
        Row(
          children: [//children que controla a última linha
            Expanded(
              child: Container(
                color: Colors.red[400],
                height: 100,
                alignment: Alignment.centerRight,
                child: const Padding(//child que controla a parte do escrito turma
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Eng. de Software - 6° Semestre de 2024',
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
