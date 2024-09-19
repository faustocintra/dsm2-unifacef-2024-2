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
              //Aqui eu criei outro filho(child) para conseguir colocar o texto dentro da primeira linha, coloquei os Styles, como negrito e o tamanho
            
              
              
              )
        
              
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              color: const Color.fromARGB(255, 0, 239, 12),
              height: 150,
              alignment: Alignment.center,
              child: const Padding(padding: EdgeInsets.all(16.0),
              child: Text('Data da prova 19/09/2024', 
              style: TextStyle(
                color: Color.fromARGB(255, 131, 77, 7),
                fontSize: 25,
                //Aqui usei novamente o padding, para conseguir a centralização do texto e como acima criei Child
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
            //Aqui foi umas das partes mais difíceis, porque tinha que abrir dois child e depois colocar o os icones, com tamanho e cores
            ],
          ),
        ),
        Row(
          
          children: [
            Container(
              height: 100,
              color: Colors.grey[400],
              alignment: Alignment.centerRight,
              child: const Padding(padding: EdgeInsets.all(23.0),
              child: Text('Sexto semestre Engenharia de Software', 
              style: TextStyle(
                fontSize: 19.5,
                fontStyle: FontStyle.italic
                //Abri um novo children, que abrange o child, para colocar informações na ultima linha
                )))
            )
          ],
        )
      ],
    );
  }
}
