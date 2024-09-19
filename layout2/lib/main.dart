import 'package:flutter/material.dart';

void main() {
  runApp(const Aplicativo());
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PaginaInicial(title: 'Flutter Demo Home Page'),
    );
  }
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LayoutProva());
  }
}

class LayoutProva extends StatelessWidget {
  const LayoutProva({super.key});
  // Aqui em baixo teremos a primeira linha do codigo, que será feita na cor roxa e com o nome em Branco e em negrito
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.purple[400],
          height: 100,
          child: Center(
            child: Text(
              'Leonardo Abib de Andrade',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
        // Nessa segunda linha temos ela na cor cinza e com a data em verde lima na tonalidade 200
        Container(
          color: Colors.grey[400],
          height: 100,
          child: Center(
            child: Text(
              '19-09-2024',
              style: TextStyle(
                color: Colors.lightGreenAccent[200],
                fontSize: 20,
              ),
            ),
          ),
        ),
        // A partir daqui temos as 4 colunas do projeto, cada uma com suas proprias cores e icones em branco.
        // a primeira linha tera 2 icones em branco, sendo uma em baixo e uma em cima, e as outras três apenas 1, com todos eles centralizados.
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.star, size: 50, color: Colors.white),
                      Icon(Icons.favorite, size: 50, color: Colors.white),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child: Center(
                    child: Icon(Icons.music_note, size: 50, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: Center(
                    child: Icon(Icons.camera, size: 50, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal[400],
                  child: Center(
                    child: Icon(Icons.brush, size: 50, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Por ultimo temos a linha final, que é uma linha azul com o nome do curso no canto direito em branco
        Container(
          color: Colors.indigo[400],
          height: 80,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'Engenharia de software',
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}