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
        // primeira linha com o nome completo branca, com fonte negrito tamanho 30.
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red[400],
                height: 100,
                child: const Center(
                  child: Text(
                    'Arthur Saltori Stante',
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
        // segunda linha com a data da prova em cor laranja escuro, tonalidade 300,
        //centralizado horizontalmente.
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.deepPurpleAccent[400],
                height: 100,
                child: Center(
                  child: Text(
                    'Data da Prova: 19/09/2024',
                    style: TextStyle(
                      color: Colors.orange[300], 
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // linha com quatro colunas, com icones aleatorios 
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ 
                    Icon(Icons.home, size: 50, color: Colors.white), 
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
                    Icon(Icons.grade, size: 50, color: Colors.white), 
                    Icon(Icons.refresh, size: 50, color: Colors.white), 
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ 
                    Icon(Icons.login, size: 50, color: Colors.white), 
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple[400],
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ 
                    Icon(Icons.apps, size: 50, color: Colors.white), 
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // ultima linha com o nome da turma alinhado a direita em itálico, em fonte
        // tamanho 25.
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.yellow[400],
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
