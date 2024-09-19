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
              '19/09/2024',
              style: TextStyle(
                color: Colors.orange[300],
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
                      Icon(Icons.star, size: 50, color: Colors.white),
                      Icon(Icons.favorite, size: 50, color: Colors.white),
                    ],
                  ),
                ),
              ), //Primeira coluna
              Expanded(
                child: Container(
                  color: Colors.yellow[400],
                  child: Center(
                    child: Icon(Icons.music_note, size: 50, color: Colors.white),
                  ),
                ),
              ),// Segunda Coluna
              Expanded(
                child: Container(
                  color: Colors.orange[400],
                  child: Center(
                    child: Icon(Icons.camera, size: 50, color: Colors.white),
                  ),
                ),
              ),// Terceira Coluna
              Expanded(
                child: Container(
                  color: Colors.teal[400],
                  child: Center(
                    child: Icon(Icons.brush, size: 50, color: Colors.white),
                  ),
                ),
              ),// Quarta Coluna
            ],
          ),
        ),
        // Terceira row
        Container(
          color: Colors.indigo[400],
          height: 80,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'Engenharia de software',
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