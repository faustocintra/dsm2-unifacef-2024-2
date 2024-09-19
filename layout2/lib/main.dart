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
        // NOME COMPLETO CENTRALIZADO HORINZONTAMENTE EM COR BRANCA, COM FONTE NEGRITO TAMANHO 30
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue[400],
                height: 150,
                child: const Center(
                  child: Text(
                    'Rogério Oliveira Cabral',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        //  DATA DA PROVA, EM COR LARANJA ESCURO, TONALIDADE 300, CENTRALIZADO
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                height: 150,
                child: Center(
                  child: Text(
                    '19/09/2024',
                    style: TextStyle(
                      color: Colors.greenAccent[200],
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // 2 LINHAS COM 4 COLUNAS
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1 COLUNA COM UM ICONE CENTRALIZADO
              Expanded(
                child: Container(
                  color: Colors.yellow[400],
                  child: const Center(
                    child: Icon(Icons.settings, size: 50, color: Colors.white),
                  ),
                ),
              ),
              // 2 COLUNA COM ICONE NA PARTE INFERIOR
              Expanded(
                child: Container(
                  color: Colors.green[400],
                  child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Icon(Icons.home, size: 50, color: Colors.white),
                  ),
                ),
              ),
              // 3 COLUNA COM UM ICONE NA PARTE SUPERIOR E OUTRO NA INFERIOR
              Expanded(
                child: Container(
                  color: Colors.red[400],
                  child: const Column(
                    children: [
                      Icon(Icons.alarm, size: 50, color: Colors.white),
                      Spacer(),
                      Icon(Icons.menu_sharp, size: 50, color: Colors.white),
                    ],
                  ),
                ),
              ),
              // 4 COLUNA COM ICONE NA PARTE SUPERIOR
              Expanded(
                child: Container(
                  color: Colors.orange[400],
                  child: const Align(
                    alignment: Alignment.topCenter,
                    child: Icon(Icons.start, size: 50, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Última linha: Nome da turma
        Row(
          children: [
            Expanded(
              child: Container(
                height: 80,
                color: Colors.grey[400],
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '6° SEMESTRE DE SISTEMA DE INFORMAÇÃO, UNIFACEF',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
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
