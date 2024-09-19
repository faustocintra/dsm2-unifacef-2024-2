// Pedro Paulino Martiniano 25784
import 'package:flutter/material.dart';

// função main para rodar aplicação carrendo widget
void main() {
  runApp(const MyApp());
}
// classe da applicação
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
      home: const MyHomePage(title: 'Prova 1 - Pedro Paulino'),
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

// layoult da aplicação
class Layout extends StatelessWidget {
  const Layout({super.key});
  // retorno de widget 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // primeira linha(roxa) com meu nome centralizado em branco
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                height: 150,
                child: const Center(
                  child: Text(
                    // meu nome
                    'Pedro Paulino Martiniano',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // segunda linha(verde) com a data da prova em laranja
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 150,
                child: Center(
                  child: Text(
                    // data da prova
                    '19/09/2024',
                    style: TextStyle(
                      // cor verde limão com tonalidade 200
                      color: Colors.lime[200],
                      fontSize: 20
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // linha dividida em 4 colunas
        Expanded(
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      // Coluna azul com dois ícones um encima e outro embaixo
      Expanded(
        child: Container(
          color: Colors.blue[400],
          child: const Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.star,  // Ícone superior branco
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Spacer(),  // Espaçamento entre os ícones
              Align(
                alignment: Alignment.bottomCenter,
                child: Icon(
                  Icons.favorite,  // Ícone inferior branco
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
      // Coluna amarela com um ícone de casa
      Expanded(
        child: Container(
          color: Colors.amber[400],
          child: const Center(
            child: Icon(
              Icons.home,  // Ícone central branco
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
      // Coluna rosa com um ícone de um chapeu
      Expanded(
        child: Container(
          color: Colors.pink[400],
          child: const Center(
            child: Icon(
              Icons.school,  // Ícone central branco
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
      // Coluna vermelha com um ícone de engrenagem
      Expanded(
        child: Container(
          color: Colors.red[400],
          child: const Center(
            child: Icon(
              Icons.settings,  // Ícone central branco
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
    ],
  ),
),

        // ultima linha(cinza) 
        Row(
          children: [
            Expanded(
              // container com um child "Align" a direita
              child: Container(
                color: Colors.grey[400],
                height: 150,
                // Align a direita com o text da minha turma em italico
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    // materia
                    'Engenharia de Software',
                    style: TextStyle(
                      color: Color.fromARGB(255, 34, 34, 34),
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
