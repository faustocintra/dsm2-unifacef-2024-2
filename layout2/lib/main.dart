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
  Widget build(BuildContext context) {            //começa a criação da tela
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],       //determina a cor do container
                height: 150,
                child: Center(
                  child: Text(
                    "Thiago Correia Azarias",    //aqui é colocado o que vai ser escrito
                    style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,    //aqui é onde é especificada a formatação do texto
                    color: Colors.white, 
                  ),
                ),
              ),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.red[400],     //determina a cor do backgroud do container
              height: 150,
              child: Center(        //Cria uma child onde tudo estará no centro
                  child: Text(     //child com o texto
                    "19/09/2024", 
                    style: TextStyle(
                    fontSize: 30.0,                  //texto, alinhamento e formatação do texto
                    fontWeight: FontWeight.bold,         
                    color: Colors.lightGreenAccent[200],    //Cor da fonte com o tom 200
                  ),
                ),
              ),
            ))
          ],
        ),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,        //determina que as children preencham a cross axis inteira
          children: [
            Expanded(
              child: Container(
                color: Colors.blue[400],
                child: Icon(Icons.all_out,size: 40,color: Colors.white,),     //insere um ícone branco no container
               )
              
            ),
            Expanded(
              child: Container(
                color: Colors.amber[400],
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,       //Aqui organiza a child em uma coluna e 
                children: [                                             //faz com que elas se distribuam igualmente pela axis
                  Icon(Icons.star,size: 40,color: Colors.white,),         
                  SizedBox(height: 100),    //força um espaçamento entre os icones
                  Icon(Icons.favorite_border,size: 40,color: Colors.white,), 
                ],
             ),
              )
            ),
            Expanded(
              child: Container(
                color: Colors.pink[400],
                child: Icon(Icons.air,size: 40,color: Colors.white,),      //insere um ícone branco no container
              )
            ),
            Expanded(
              child: Container(
                color: Colors.lime[400],
                child: Icon(Icons.monitor,size: 40,color: Colors.white,),   //insere um ícone branco no container
              )
            ),
          ],
        )),
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.brown[400],
              height: 150,
              child: Container(           //Abre um container e o formata em formato de ROW
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,      //Joga os conteudos do container para o mais proximo do final do row
                  children: [
                    Text('Engenharia de software',
                    style: TextStyle(
                    fontSize: 25.0,              //determina o tamanho da fonte do texto
                    fontStyle: FontStyle.italic,    //estilo da fonte do texto
                    color: Colors.white, ),    //cor do texto
                     ),
                  ],
                  
                ),

                )
              ),
            )
          ],
        ),
      ],
    );
  }
}
