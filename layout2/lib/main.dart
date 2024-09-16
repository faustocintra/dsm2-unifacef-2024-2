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
        Row(
          children: [
            Expanded(
                child: Container(
                  color: Colors.purple[400],
                  height: 150,
                  child: const Center(
                    child: Text("Nicolas Torres Chiarelo",
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
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 150,
                child: Center(
                  child: Text(
                    "19/9/2024",
                    style: TextStyle(
                      color: Colors.orange[300],
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: Container(color: Colors.blue[400], child: const Icon(Icons.home))),
              Expanded(
                child: Center(
                  child: Stack(
                    children: [
                      Container(color: Colors.amber[400]), // Cor de fundo da coluna
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite),
                          Icon(Icons.star),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: Container(color: Colors.pink[400], child: const Icon(Icons.settings))),
              Expanded(child: Container(color: Colors.grey[400], child: const Icon(Icons.person))),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.cyan[400],
                height: 150,
                child: const Align(
                  alignment: Alignment.centerRight, // Alinha o conteúdo à direita
                  child: Text(
                    "Sistemas de Informação",
                    style: TextStyle(
                      color: Colors.black,
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
