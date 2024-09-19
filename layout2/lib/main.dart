// Estrutura Aplicativo Flutter
import 'package:flutter/material.dart';
// Importação do Pacote Flutter: importa o pacote flutter/material.dart, que contém os widgets e funcionalidades necessárias

void main(){
  runApp(const MyApp());
  // Função Principal (main): é o ponto de entrada do aplicativo, chamamos runApp para iniciar o aplicativo com o widget MyApp
}

// Criação do Widget Principal (MyApp)
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Flutter Demo', // Define o título do aplicativo
      debugShowCheckedModeBanner: false, // Remove a faixa de debug
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Define o tema do aplicativo
        useMaterial3: true, // Utiliza o Material Design 3
      ),
      home: const MyHomePage(title:'Flutter Demo Home Page'), // Define a página inicial do aplicativo
    );
  }
  // Método build: Define a estrutura do aplicativo. MaterialApp para configurar o título, tema e a página inicial do aplicativo
}

// Definição da Página Inicial (MyHomePage)
class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context){
    return const Scaffold(body: Layout());
    // Método build: Retorna um Scaffold que define a estrutura básica da página, utilizando o widget Layout
  }
  // Classe MyHomePage: Recebe um título como parâmetro.
}

// Criação do Layout Personalizado
class Layout extends StatelessWidget{
  const Layout({super.key});
  @override
  Widget build(BuildContext context){
    return Column(
      children:[
        // Primeira Linha (Row): Contém um Container com o nome completo. Utilizamos Expanded para que o Container ocupe todo o espaço disponível
        Row(
          children:[
            Expanded(
              child:Container(
                color:Colors.purple[400],
                height:150,
                child:const Center(
                  child: Text(
                    'Stella Barbosa de Souza', // Texto da primeira linha
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                  )
                )
              )
            )
          ]
        ),
        // Segunda Linha (Row): exibe a data.
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 150,
                child: Center(
                  child: Text(
                    'Data: 19/09/2024', // Texto da segunda linha
                    style: TextStyle(
                      color: Colors.lime[200], // Cor do texto
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                  )
                )
              )
            )
          ]
        ),
        // Terceira Linha (Row): Contém quatro colunas, cada uma com um ícone diferente. Expanded e Column para organizar os ícones
        Expanded(
          child:Row(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children:[
              Expanded(
                child:Container(
                  color:Colors.blue[400],
                  child:Column(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children:const[
                      Icon(Icons.star, size: 50, color: Colors.white), // Ícone de estrela preenchida
                      Icon(Icons.star_border, size: 50, color: Colors.white), // Ícone de estrela vazia
                    ]
                  )
                )
              ),
              Expanded(
                child:Container(
                  color:Colors.amber[400],
                  child:const Center(
                    child:Icon(Icons.favorite, size: 50, color: Colors.white) // Ícone de coração
                  )
                )
              ),
              Expanded(
                child: Container(
                  color:Colors.pink[400],
                  child:const Center(
                    child:Icon(Icons.thumb_up, size: 50, color: Colors.white) // Ícone de polegar para cima
                  )
                )
              ),
              Expanded(
                child:Container(
                  color:Colors.teal[400],
                  child:const Center(
                    child:Icon(Icons.thumb_down, size: 50, color: Colors.white) // Ícone de polegar para baixo
                  )
                )
              )
            ]
          )
        ),
        // Última Linha (Row): Exibe o curso alinhado à direita
        Row(
          children:[
            Expanded(
              child:Container(
                color:Colors.red[400],
                height: 100,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child:Text(
                    'Engenharia de Software', // Texto da última linha
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )
                  )
                )
              )
            )
          ]
        )
      ]
    );
  }
  // Método build: Column para organizar os widgets verticalmente
  // Classe Layout: Define o layout da página inicial
}
