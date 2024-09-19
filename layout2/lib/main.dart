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
        // 1ª Linha - Nome do Aluno
        Row(
          children: [
            Expanded(
              child: Container(
              color: Colors.purple[400], // define a cor da linha
              height: 150,
              child: Center(
                child: Text(
                  'Vinicius Cintra Ferreira',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold, // Aplica o estilo de negrito
                    color: Colors.white, // Altera a cor da fonte
                  ),
                ),
              ),
            ))
          ],
        ),
        // 2ª Linha - Data da Prova
        Row(
          children: [
            Expanded(
              child: Container(
              color: Colors.green[400], // define a cor da linha
              height: 150,
              child: Center(
                child: Text(
                  '19/09/2024',
                  style: TextStyle(
                    fontSize: 30, // define o tamanho do texto
                    fontWeight: FontWeight.bold, // Aplica o estilo de negrito
                    color: Colors.lime[200], // Para alterar a cor da data para verde limão, imaginei que poderia ter uma cor chamada lime, sendo assim testei e consegui aplicar a cor conforme solicitado na prova
                  ),
                ),
              ),
            ))
          ],
        ),
        Expanded(
          // 3ª Linha - colunas
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              // 1ª Coluna - icone de home
              child: Container(
                color: Colors.blue[400], // define a cor da coluna
                child: Center(
                  child: Icon(Icons.home, size: 30, color:Colors.white) // levando em consideração que o size estava sendo definido em sequência imaginei que a cor poderia seguir a mesma logica, apliquei e funcinou
                ),
              ),
            ),
            Expanded(
              // 2ª Coluna - icone de conta
              child: Container(
                color: Colors.amber[400], // define a cor da coluna
                child: Center(
                  child: Icon(Icons.account_circle, size: 30, color:Colors.white), // levando em consideração que o size estava sendo definido em sequência imaginei que a cor poderia seguir a mesma logica, apliquei e funcinou
                ),
              ),
            ),
            Expanded(
              // 3ª Coluna - icone de menu
              child: Container(
                color: Colors.pink[400], // define a cor da coluna
                child: Center(
                  child: Icon(Icons.menu, size: 30, color:Colors.white), // levando em consideração que o size estava sendo definido em sequência imaginei que a cor poderia seguir a mesma logica, apliquei e funcinou
                ),
              ),
            ),
            Expanded(
              // 4ª Coluna - icone configuração e notificação
              child: Container(
                color: Colors.cyan[400], // define a cor da coluna
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, size: 30, color:Colors.white), // levando em consideração que o size estava sendo definido em sequência imaginei que a cor poderia seguir a mesma logica, apliquei e funcinou
                    SizedBox(height: 20.0), // Adiciona o espaçamento entre os icones
                    Icon(Icons.notifications, size: 30, color:Colors.white), // levando em consideração que o size estava sendo definido em sequência imaginei que a cor poderia seguir a mesma logica, apliquei e funcinou
                  ],
                ),
              ),
            ),
          ],
        )),
        // 4ª Linha - Nome do Curso
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.indigo[400], // define a cor da linha
                height: 150,
                child: Stack(
                  children: [
                    Positioned( // permite posicionar o texto relativo ao container
                      bottom: 55, // define que o texto deve ser exibito 55px acima da parte infetior do container
                      right: 10, // define que o texto deve esta a 10 px de distanvcia da direita do container
                      child: Text(
                        'Engenharia de Software',
                        style: TextStyle(
                          fontSize: 25, // define o tamanho do texto
                          fontStyle: FontStyle.italic, // Aplica o estilo de italico pata o texto
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
