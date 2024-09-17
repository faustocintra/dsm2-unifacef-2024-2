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
                child: Container(//primeira linha com meu nome
              color: Colors.cyan[400],
              height: 100,
              child: const Center(child: Text(
                'Brenda Paulino de Araujo',//meu nome
                style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
              ),)
            )))
          ],
        ),
        Row(//segunda linha com a data da prova
          children: [
            Expanded(child: Container(color: Colors.green[400], height: 100,
             child: const Center(
                  child: Text(
                    'Data da Prova: 19/09/2024', //data da prova
                    style: TextStyle(
                      color: Colors.orange, 
                      fontSize: 20,
                    ),
                  ),
                ),)),
            
          ],
        ),
        Expanded(//coluna
            child: Row(
          children: [
            Expanded(child: Container(color: Colors.indigo[400],
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.star, // Ícone superior
                        size: 50,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.favorite, // Ícone inferior
                        size: 50,
                        color: Colors.white,
                      ),
                    ],
                  ),)),
            Expanded(child: Container(color: Colors.blue[400],//coluna
            child: const Center(
                    child: Icon(
                      Icons.access_alarm, // Ícone no centro
                      size: 50,
                      color: Colors.white,
                    ),
                  ),)),
            Expanded(child: Container(color: Colors.pink[400],//coluna
            child: const Center(
                    child: Icon(
                      Icons.thumb_up, // Ícone no centro
                      size: 50,
                      color: Colors.white,
                    ),
                  ),)),
            Expanded(child: Container(color: Colors.lime[400],//coluna
            child: const Center(
                    child: Icon(
                      Icons.lightbulb, // Ícone no centro
                      size: 50,
                      color: Colors.white,
                    ),
                  ),)),
          ],
        )),
        Row(//Ultima linha
          children: [
            Expanded(child: Container(color: Colors.brown[400], height: 100,
            child: const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Text(
                      'Turma de Eng. Software', // Nome da turma
                      style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),)),
          ],
        ),
      ],
    );
  }
}
