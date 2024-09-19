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
              // Adicionado o child criando o texto com o nome
              child: const Text(
                'Janaisa Voltolino',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.green[400],
              height: 150,
              // Adicionado o child criando o texto com a data
              child: Text(
                '19/09/2024',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lime[200], // Atualizado para verde-limão tonalidade 200
                  fontSize: 25,
                ),
              ),
            ))
          ],
        ),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              color: Colors.blue[400],
              child: const Icon(
                Icons.mms_sharp,
                color: Colors.white, // Ícone na cor branca
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.amber[400],
              child: const Icon(
                Icons.live_tv,
                color: Colors.white, // Ícone na cor branca
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.red[400],
              // Adicionado um padding para os ícones ficarem centralizados
              padding: const EdgeInsets.all(16),
              // Adicionado uma column para ter 2 ícones
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.business,
                    color: Colors.white, // Ícone na cor branca
                  ),
                  Icon(
                    Icons.area_chart,
                    color: Colors.white, // Ícone na cor branca
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.greenAccent[400],
              child: const Icon(
                Icons.compost,
                color: Colors.white, // Ícone na cor branca
              ),
            )),
          ],
        )),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.blueGrey[400],
              height: 100,
              // Nome do curso
              child: const Text(
                'Sistema de Informação',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                ),
              ),
            ))
          ],
        ),
      ],
    );
  }
}
