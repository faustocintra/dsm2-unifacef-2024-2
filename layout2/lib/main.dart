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
              child: const Center( // centralizado tanto horizontalmente quanto verticalmente
                  child: Text( // exibe o texto
                    'Mariana E. Reis Alves', // meu nome
                    style: TextStyle(  // estilo do texto
                    color: Colors.white, // cor
                    fontSize: 30, // tamanho
                    fontWeight: FontWeight.bold, // tipo da fonte
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
              height: 150,
              child: Center( //centralizou
                child: Text( // texto 
                  '19/09/2024', // data
                  style: TextStyle(
                    color: Colors.lime[200], //cor
                    fontSize: 30, // aumentei o tamanho
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
            Expanded(child:  Container(
              color: Colors.blue[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, //isso permite os ícones ficarem um pra cima e um pra baixo
                children: const [
                  Icon(Icons.home, size: 40, color: Colors.white), // Ícone pra cima
                  Icon(Icons.confirmation_num, size: 40, color: Colors.white), // Ícone pr baixo
                ],
              ),
              ),
            ),
            Expanded(child: 
              Container(
                color: Colors.amber[400],
                child: const Center( // Adiciona o ícone dentro do container e configura no centro
                  child: Icon(Icons.settings, size: 40, color: Colors.white), // Adição dos ícones com tamanho e cor
                ),
              ),
            ),
            Expanded(child: 
              Container(
                color: Colors.pink[400],
                child: const Center( // Adiciona o ícone dentro do container e configura no centro
                  child: Icon(Icons.add_alert, size: 40, color: Colors.white), // Adição dos ícones com tamanho e cor 
                ),
              )
            ),
            Expanded(child: 
              Container(
                color: Colors.red[400],
                child: const Center( // Adiciona o ícone dentro do container e configura no centro
                  child: Icon(Icons.bolt, size: 40, color: Colors.white), // Adição dos ícones com tamanho e cor
                ),
              ),
            ),// coluna adicionada 
          ],
        )),


        Row( //linha adicionada
          children: [
            Expanded(
                child: Container(
              color: Colors.grey[400], // cor 
              height: 150, // altura
              child: const Align(
                alignment: Alignment.centerRight, // Alinha o texto à direita
                child: Text(
                  'Engenharia de software',
                style: TextStyle(
                  fontSize: 25, // tamanho do texto
                  fontStyle: FontStyle.italic, // Define o texto como itálico
                ),
                ),
             ),

            )),
          ],
        ),
      ],
    );
  }
}
