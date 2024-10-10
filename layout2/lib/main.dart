import 'package:flutter/material.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
                child: Center(
                  child: Text(
                    'Vivian Almeida Silva', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ), //TextStyle
                  ), //Text
                ), //Center
            ))
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
                  '19/09/2024', //data de hoje
                  style: TextStyle(
                    color: Colors.lime[200], // lime é o "verde limão" solicitado
                    fontSize: 30, 
                  )
                )
              )
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
                child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star, size: 50, color: Colors.white), //ícone de estrela na cor branca
                  Icon(Icons.wb_sunny, size: 50, color: Colors.white), //ícone de sol na cor branca
                ],
                ),
                ),
                ),
            Expanded(
              child: Container(
                color: Colors.amber[400],
                child: const Center(
                  child: Icon(Icons.favorite, size: 50, color: Colors.white)//ícone de coração na cor branca
                ),
                ),
                ),
            Expanded(
              child: Container(
                color: Colors.pink[400],
                child: const Center(
                  child: Icon(Icons.home, size: 50, color: Colors.white) //ícone de casa na cor branca
                ),
                ),
                ),
            Expanded(
              child: Container(
                color: Colors.brown[400],
                child: const Center(
                  child: Icon(Icons.settings, size: 50, color: Colors.white), //ícone de engrenagem na cor branca
                ),
                ),
                ),
          ],
        )),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.purple[400],
              height: 150,
                child: Text(
                  'Sistemas de Informação',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                  )
                )
            ))
          ],
        ),
      ],
    );
  }
}
