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
        // linha branca para o nome completo, em negrito tamanho 30.
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red[400],
                height: 100,
                child: const Center(
                  child: Text(
                    'Enzo Gabriel Silva',
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
        // segnda linha com a data da prova, e na cor verde limão, tonalidade 200,
        //centralizando horizontalmente.
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue[900],
                height: 100,
                child: Center(
                  child: Text(
                    'Data da Prova: 19/09/2024',
                    style: TextStyle(
                      color: Colors.lime[200], 
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // linha com quatro colunas e com icones selecionados alaeatóriamente 
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.purple[400],
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ 
                    Icon(Icons.token, size: 50, color: Colors.white), 
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow[600],
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ 
                    Icon(Icons.html, size: 50, color: Colors.white), 
                    Icon(Icons.css, size: 50, color: Colors.white), 
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green[400],
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ 
                    Icon(Icons.add, size: 50, color: Colors.white), 
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.brown[400],
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ 
                    Icon(Icons.block, size: 50, color: Colors.white), 
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // última linha com o nome do curso e qual a turma. A direita em itálico, em fonte 25.
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red[400],
                height: 90,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '6º Semestre / Engenharia de Software',
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