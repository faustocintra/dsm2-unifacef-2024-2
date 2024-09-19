import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Método build, que contrói a interface do App
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
  //Construtor da página inicial
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
        //Primeira row
        Container(
          color: Colors.brown[400],
          height: 100,
          child: Center(
            child: Text(
              'Ricardo de Lima',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
        //Segunda row
        Container(
          color: Colors.purple[400],
          height: 100,
          child: Center(
            child: Text(
              '20/09/2024',
              style: TextStyle(
                color: Colors.lime[300],
                fontSize: 20,
              ),
            ),
          ),
        ),
        //Quatro Colunas
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.red[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.home, size: 50, color: Colors.white),
                      Icon(Icons.favorite, size: 50, color: Colors.white),
                    ],
                  ),
                ),
              ), // Primeira Coluna
              Expanded(
                child: Container(
                  color: Colors.yellow[400],
                  child: Center(
                    child: Icon(Icons.settings, size: 50, color: Colors.white),
                  ),
                ),
              ),// Segunda Coluna
              Expanded(
                child: Container(
                  color: Colors.orange[400],
                  child: Center(
                    child: Icon(Icons.alarm, size: 50, color: Colors.white),
                  ),
                ),
              ),// Terceira Coluna
              Expanded(
                child: Container(
                  color: Colors.teal[400],
                  child: Center(
                    child: Icon(Icons.beach_access, size: 50, color: Colors.white),
                  ),
                ),
              ),// Quarta Coluna
            ],
          ),
        ),
        // Terceira row
        Container(
          color: Colors.blue[400],
          height: 80,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'Engenharia de Software',
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}