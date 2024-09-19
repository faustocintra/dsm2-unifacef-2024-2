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
        // 1ª Linha - Nome Aluno
        Row(
          children: [
            Expanded(
              child: Container(
              color: Colors.purple[400], //cor da linha
              height: 150,
              child: Center(
                child: Text(
                  'Augusto Benate',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold, //negrito no texto
                    color: Colors.white, //cor da fonte
                  ),
                ),
              ),
            ))
          ],
        ),
        // 2ª Linha - Data de hoje
        Row(
          children: [
            Expanded(
              child: Container(
              color: Colors.green[400], //cor da linha
              height: 150,
              child: Center(
                child: Text(
                  '19/09/2024',
                  style: TextStyle(
                    fontSize: 30, //tamanho do texto
                    fontWeight: FontWeight.bold, //Negrito no texto
                    color: Colors.green[200], //Cor da fonte para verde limão tom 200 pelo parametro 'color' como pedido na prova
                  ),
                ),
              ),
            ))
          ],
        ),
        Expanded(
          // 3ª Linha - Colunas coloridas
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              // 1ª Coluna - icone home
              child: Container(
                color: Colors.blue[400], //cor da coluna
                child: Center(
                  child: Icon(Icons.home, size: 30, color:Colors.white) //icone - tamanho 30, na cor branca pelo parâmetro 'color' como pedido na prova
                ),
              ),
            ),
            Expanded(
              // 2ª Coluna - icone conta
              child: Container(
                color: Colors.amber[400], //cor da coluna
                child: Center(
                  child: Icon(Icons.account_circle, size: 30, color:Colors.white), //icone - tamanho 30,, na cor branca pelo parâmetro 'color' como pedido na prova
                ),
              ),
            ),
            Expanded(
              // 3ª Coluna - icone menu
              child: Container(
                color: Colors.pink[400], //cor da coluna
                child: Center(
                  child: Icon(Icons.menu, size: 30, color:Colors.white), //icone - tamanho 30, na cor branca pelo parâmetro 'color' como pedido na prova
                ),
              ),
            ),
            Expanded(
              // 4ª Coluna - icone config e notif
              child: Container(
                color: Colors.orange[400], //cor da coluna
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, size: 30, color:Colors.white), //icone - tamanho 30, na cor branca pelo parâmetro 'color' como pedido na prova
                    SizedBox(height: 20.0), //espaçamento entre os icones
                    Icon(Icons.notifications, size: 30, color:Colors.white), //icone - tamanho 30, na cor branca pelo parâmetro 'color' como pedido na prova
                  ],
                ),
              ),
            ),
          ],
        )),
        // 4ª Linha - Nome Curso
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[400], //cor da linha
                height: 150,
                child: Stack(
                  children: [
                    Positioned( //texto relativo ao container
                      bottom: 55, // texto exibido 55px acima da parte inferior do container
                      right: 10, // texto a 10 px de distancia da direita do container
                      child: Text(
                        'Sistema de Informação',
                        style: TextStyle(
                          fontSize: 25, // define o tamanho do texto
                          fontStyle: FontStyle.italic, // Aplica o estilo de italico para o texto
                          color: Colors.black
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