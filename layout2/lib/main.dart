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
        // Primeira linha com o nome completo branca, com fonte negrito tamanho 30.
        // Criando um Row para a primeira linha, dentro do children um expanded dentro dele
        //criado um container como a altura e a cor de fundo
        //apos um text para colocar um texto dentro da linha, apos isso o style do texto 
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red[400],
                height: 100,
                child: const Center(
                  child: Text(
                    'Arthur Saltori Stante',
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
        // segunda linha com a data da prova em cor verde limão, tonalidade 200,
        //centralizado horizontalmente.
        // outra Row criada com os mesmo atribuitos porem neste container a cor do fundo foi alterada
        // e o text tambem tanto o que esta escrito como a cor dele 
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.deepPurpleAccent[400],
                height: 100,
                child: Center(
                  child: Text(
                    'Data da Prova: 19 / 09 / 2024',
                    style: TextStyle(
                      color: Colors.lime[200], 
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // linha com quatro colunas, com icones aleatorios 
        //aqui criamos somente um expanded sem o row porem atribuimos um child:Row para realizar que as colunas criadas apos fiquem na mesma linha
        //cada container tem uma coluna onde em cada uma tem um background com cor diferente
        // e em cada coluna tem um icone excessão da segunda coluna onde temos 2 icones
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ 
                    Icon(Icons.home, size: 50, color: Colors.white), 
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green[400],
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ 
                    Icon(Icons.grade, size: 50, color: Colors.white), 
                    Icon(Icons.refresh, size: 50, color: Colors.white), 
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ 
                    Icon(Icons.login, size: 50, color: Colors.white), 
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple[400],
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ 
                    Icon(Icons.apps, size: 50, color: Colors.white), 
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // ultima linha com o nome da turma alinhado a direita em itálico, em fonte
        // tamanho 25.
        // criamos outra row para seguir embaixo das colunas como linha e nesta linhas temos
        // um background diferente das demais e um text diferente com um alinhamento na direita
        // e um fontstyle mudando a a escrita para italico e e uma fonte da letra de 25px
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.yellow[400],
                height: 90,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '6º Semestre / Engenharia de Software',
                    style: TextStyle(
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
