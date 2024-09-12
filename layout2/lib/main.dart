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
              height: 100,
                child: const Center(
                child: Text(
                  'Paulo Eduardo Martins Dutra',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
              color: Colors.green[400],
              height: 100,
              child: const Center(
                child: Text(
                  '19/09/2024',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 30,
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
          child: Icon(
            Icons.home,
            color: Colors.white,
            size: 40.0,
          ),
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.amber[400],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.star,
                color: Colors.white,
                size: 40.0,
              ),
              Icon(
                Icons.star_border,
                color: Colors.white,
                size: 40.0,
              ),
            ],
          ),
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.pink[400],
          child: Icon(
            Icons.favorite,
            color: Colors.white,
            size: 40.0,
          ),
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.cyan[400],
          child: Icon(
            Icons.settings,
            color: Colors.white,
            size: 40.0,
          ),
        ),
      ),
    ],
  ),
),
          Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.blueGrey[400],
              height: 100,
                              child: const Center(
                child: Text(
                  'Engenharia de software 3° ano',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ))
          ],
        ),
      ],
    );
  }
}

