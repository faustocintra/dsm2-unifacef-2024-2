import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: layout(),
        ),
      ),
    );
  }
}

class layout extends StatelessWidget{
  const layout({super.key});

  @override
  Widget build(BuildContext context){
   return const Row(children: <Widget>[
      
   ],)
  }
}


