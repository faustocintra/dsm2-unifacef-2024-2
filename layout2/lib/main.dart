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
    // Aqui começa a coluna principal, ela retorna todas as linhas principais da aplicação
    return Column(
      //Aqui introduzimos um comando para receber variás linha e colunas, todo dentro do children são filho do mesmo pai
      children: [
        //Aqui começamos a primeira linha
        Row(
          children: [
            //Expandimos ela para ocupar toda o espaço disponível do pai 
            Expanded(
              //Aqui teremos um filho, que vai ter o tamanho de 150 e cor purple, e um filho dentro do filho para adicionarmos o texto
                child: Container(
              color: Colors.purple[400],
              height: 150,
              child: Text(
                "César Daniel dos Santos Rodrigues",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ))
          ],
        ),
        //Aqui começamos a segunda linha
        Row(
          children: [
            //Expandimos ela para ocupar toda o espaço disponível do pai 
            Expanded(
              //Aqui temos um filho, que vai ter o tamanho de 150 e cor green, e um filho dentro do filho para adicionarmos o texto
                child: Container(
              color: Colors.green[400],
              height: 150,
              child: Text(
                "19/Set/2024",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.orange[300], fontSize: 30),
              ),
            ))
          ],
        ),
         //Aqui começamos uma coluna, aqui novamente usamos o extended para extender verticalmente porque o pai é uma coluna
        Expanded(
          //Aqui dentro da coluna abrimos uma linha para inserirmos mais de uma coluna
            child: Row(
          // Forçamos essa colunas ficarem esticadas na altura maxíma
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Cada filho é uma coluna, e recebe suas caracteristicas propría de cor
            //Filho 1 recebe a cor blue, e dentro dele existe outra coluna que vai receber um children com 2 icones
            Expanded(
                child: Container(
              color: Colors.blue[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.home),
                  Icon(Icons.home),
                ],
              ),
            )),
            //Filho 2 recebe a cor amber, e dentro dele existe outra coluna que vai receber um children com icone
            Expanded(
                child: Container(
              color: Colors.amber[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.home),
                ],
              ),
            )),
            //Filho 3 recebe a cor pink, e dentro dele existe outra coluna que vai receber um children com icone
            Expanded(
                child: Container(
              color: Colors.pink[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.home),
                ],
              ),
            )),
            //Filho 4 recebe a cor pink, e dentro dele existe outra coluna que vai receber um children com icone
            Expanded(
                child: Container(
              color: Colors.cyanAccent[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.home),
                ],
              ),
            )),
          ],
        )),
        //Aqui começamos mais um linha adicional, seguindo o mesmo processo de extender a linha ao máximo
        //Essa linha contém a altura de 150, dentro dele tem um child dentro para o texto 
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.cyan[400],
              height: 150,
              child: const Text("Engenharia de Software - 6°Semestre",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic)),
            ))
          ],
        )
      ],
    );
  }
}
