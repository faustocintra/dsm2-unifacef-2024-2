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
              child: Center(
                child: Text(
                  'Tania Maraiza de Souza',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold, 
                    color: Colors.white, 
                  ),
                ),
              ),
            ))
          ],
        ),
        // 2ª Linha - Data da Prova
        Row(
          children: [
            Expanded(
              child: Container(
              color: Colors.green[400], // define a cor da linha
              height: 150,
              child: Center(
                child: Text(
                  '19/09/2024',
                  style: TextStyle(
                    fontSize: 30, // define o tamanho do texto
                    fontWeight: FontWeight.bold, 
                    color: Colors.lime[200], // Lembro de ter lido na documentação do flutter sobre isso testei da forma que lembrava
                  ),
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
                child: Center(
                  child: Icon(Icons.search, size: 30, color:Colors.white), // Lembro de ter lido na documentação do flutter sobre isso testei da forma que lembrava
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.amber[400], 
                child: Center(
                  child: Icon(Icons.person, size: 30, color:Colors.white), // Lembro de ter lido na documentação do flutter sobre isso testei da forma que lembrava
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.pink[400], 
                child: Center(
                  child: Icon(Icons.notifications, size: 30, color:Colors.white), // Lembro de ter lido na documentação do flutter sobre isso testei da forma que lembrava
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange[400], 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, size: 30, color:Colors.white), // Lembro de ter lido na documentação do flutter sobre isso testei da forma que lembrava
                    SizedBox(height: 20.0), 
                    Icon(Icons.menu, size: 30, color:Colors.white), // Lembro de ter lido na documentação do flutter sobre isso testei da forma que lembrava
                  ],
                ),
              ),
            ),
          ],
        )),
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red[400],
                height: 150,
                child: Stack(
                  children: [
                    Positioned( 
                      bottom: 55, 
                      right: 10, 
                      child: Text(
                        'Engenharia de Software',
                        style: TextStyle(
                          fontSize: 25, 
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}