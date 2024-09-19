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
                padding: EdgeInsets.all(16.0), // Adicionando padding para espaçamento
                alignment: Alignment.center,   // Centralizando o texto no container
                child: Text(
                  'João Paulo Faleiros dos Santos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0, // Definindo um tamanho de fonte
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.white,
              height: 150,
              padding: EdgeInsets.all(16.0), // Adicionando padding para espaçamento
                alignment: Alignment.center,   // Centralizando o texto no container
                child: Text(
                  '19/09/2024',
                  style: TextStyle(
                    color: Color(0xFF99FF00), // Definindo texto na cor verde limão, na tonalidade 200
                    fontSize: 18.0, // Definindo um tamanho de fonte
                  ),
                )
            ))
          ],
        ),
        Expanded(
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.stretch, 
    children: [
      // Ícones informados nas colunas, todos na cor branca
      // Primeira coluna com dois ícones (superior e inferior)
      Expanded(
        child: Container(
          color: Colors.blue[400],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
              Icon(Icons.home, size: 50, color: Colors.white), // Ícone superior
              Icon(Icons.phone, size: 50, color: Colors.white), // Ícone inferior
            ],
          ),
        ),
      ),
      
      // Segunda coluna com um ícone centralizado
      Expanded(
        child: Container(
          color: Colors.amber[400],
          child: Center(
            child: Icon(Icons.email, size: 50, color: Colors.white), 
          ),
        ),
      ),
      
      // Terceira coluna com um ícone centralizado
      Expanded(
        child: Container(
          color: Colors.pink[400],
          child: Center(
            child: Icon(Icons.alarm, size: 50, color: Colors.white), 
          ),
        ),
      ),
      
      // Quarta coluna com um ícone centralizado
      Expanded(
        child: Container(
          color: Colors.amber[400],
          child: Center(
            child: Icon(Icons.accessibility, size: 50, color: Colors.white), 
          ),
        ),
      ),
    ],
  ),
)
,
        Row(
  children: [
    Expanded(
      child: Container(
        color: Colors.green[400],
        height: 150,
        child: Align(
          alignment: Alignment.centerRight, // Alinha o texto à direita
          child: Text(
            'Sistemas de Informação', // adicionando o nome da turma
            style: TextStyle(
              fontSize: 25, // Fonte tamanho 25
              fontStyle: FontStyle.italic, // Texto em itálico
              color: Colors.white, 
            ),
          ),
        ),
      ),
    ),
  ],
)

      ],
    );
  }
}
