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
                    "Thiago Correia Azarias", 
                    style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, 
                  ),
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
              child: Center(
                  child: Text(
                    "19/09/2024", 
                    style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[300], 
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
                child: Icon(Icons.all_out,size: 40),
               )
              
            ),
            Expanded(
              child: Container(
                color: Colors.amber[400],
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Centraliza os ícones verticalmente
                children: [
                  Icon(Icons.star,size: 40), // Primeiro ícone
                  SizedBox(height: 100),
                  Icon(Icons.favorite_border,size: 40), // Segundo ícone
                ],
             ),
              )
            ),
            Expanded(
              child: Container(
                color: Colors.pink[400],
                child: Icon(Icons.air,size: 40),
              )
            ),
            Expanded(
              child: Container(
                color: Colors.lime[400],
                child: Icon(Icons.monitor,size: 40),
              )
            ),
          ],
        )),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.brown[400],
              height: 150,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Engenharia de software',
                    style: TextStyle(
                    fontSize: 25.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.white, ),
                    
                  ),
                  ],
                ),

                )
              ),
            )
          ],
        ),
      ],
    );
  }
}
