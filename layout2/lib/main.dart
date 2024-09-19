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
// Row com o nome
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
                        color: Colors.white, // Utilizacao de cores
                        fontWeight: FontWeight.bold, // estilo
                        fontSize: 30, // tamanho da fonte 
                      ),
                    ),
                  ),
                ),
             ),
          ],
        ),
        // Row com data
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
                      color: Colors.lime[400],
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Cols com os icones
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: Container(color: Colors.blue[400], child: const Icon(Icons.home, color: Colors.white))),
              Expanded(
                child: Center(
                  child: Stack(
                    children: [
                      Container(color: Colors.amber[400]), // Cor de fundo da coluna
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite, color: Colors.white),
                          Icon(Icons.star, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: Container(color: Colors.pink[400], child: const Icon(Icons.settings, color: Colors.white))),
              Expanded(child: Container(color: Colors.grey[400], child: const Icon(Icons.person, color: Colors.white))),
            ],
          ),
        ),
        //Row nova 
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
