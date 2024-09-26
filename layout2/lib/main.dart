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
              child: const Text('Fausto Gonçalves Cintra', 
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.green[400],
              height: 150,
              child: Text('17/09/2024', 
                style: TextStyle(color: Colors.lime[200]),
                textAlign: TextAlign.center,
              ),
            ))
          ],
        ),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container(color: Colors.blue[400],
              child: const Icon(Icons.carpenter, color: Colors.white)
            )),
            Expanded(child: Container(color: Colors.amber[400],
              child: const Icon(Icons.cast_sharp)
            )),
            Expanded(child: Container(color: Colors.pink[400],
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Icon(Icons.add_alarm),
                Icon(Icons.backpack)
              ],)
            )),
            Expanded(child: Container(color: Colors.brown[400],
              child: const Icon(Icons.sms_sharp)
            )),
          ],
        )),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.teal[400],
              height: 150,
              child: const Text('Engenharia de Software/Sistemas de Informação', 
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
                textAlign: TextAlign.right,
              ),
            ))
          ],
        ),
      ],
    );
  }
}
