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
              alignment: Alignment.center,
              child: const Padding(padding: EdgeInsets.all(16.0),
              child: Text('Gabriel Paes Leme Costa', 
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )
              ),
              
              
              
              )
        
              
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.green[400],
              height: 150,
              alignment: Alignment.center,
              child: const Padding(padding: EdgeInsets.all(16.0),
              child: Text('Data da prova 19/09/2024', 
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 25,
                )))
            ))
          ],
        ),
        Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: Container(color: Colors.red[400], child:
             const Column(
              children: [
                Icon(Icons.star, size: 50, color: Colors.white),
                Spacer(),
                Icon(Icons.favorite, size: 50, color: Colors.white),
              ],
             )
            
              )),
              Expanded(child: Container(color: Colors.orange[400], child:  Icon(Icons.home, size: 50, color: Colors.white),)),
              Expanded(child: Container(color: Colors.brown[400], child: Icon(Icons.settings, size: 50, color: Colors.white) ,)),
              Expanded(child: Container(color: Colors.cyan[400],child: Icon(Icons.person, size: 50, color: Colors.white),)),
            ],
          ),
        ),
        Row(
          
          children: [
            Container(
              height: 100,
              color: Colors.grey[400],
              alignment: Alignment.centerRight,
              child: const Padding(padding: EdgeInsets.all(16.0),
              child: Text('Sexto semestre Engenharia de Software', 
              style: TextStyle(
                fontSize: 19.5,
                fontStyle: FontStyle.italic
                )))
            )
          ],
        )
      ],
    );
  }
}
