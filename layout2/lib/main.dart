import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
    Widget build(BuildContext context) {
      // Constrói o layout do widget
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
        // Primeira linha contendo um container com o nome
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],  // Define a cor de fundo do container como roxo
                height: 100,  // Altura fixa de 100 pixels
                child: const Center(
                  // Centraliza o texto dentro do container
                  child: Text(
                    'Paulo Eduardo Martins Dutra',  // Texto exibido
                    style: TextStyle(
                      color: Colors.white,  // Cor do texto
                      fontSize: 30,  // Tamanho da fonte
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        
        // Segunda linha contendo um container com a data
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],  // Define a cor de fundo do container como verde
                height: 100,  // Altura fixa de 100 pixels
                child: const Center(
                  // Centraliza o texto dentro do container
                  child: Text(
                    '19/09/2024',  // Texto exibido
                    style: TextStyle(
                      color: Color(0xFFFFEB3B),  // Define a cor do texto como amarelo
                      fontSize: 30,  // Tamanho da fonte
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        // Linha de ícones, com 4 containers coloridos
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,  // Estica os ícones para ocupar toda a altura disponível
            children: [
              // Primeiro ícone (casa) com fundo azul
              Expanded(
                child: Container(
                  color: Colors.blue[400],  // Fundo azul
                  child: Icon(
                    Icons.home,  // Ícone da casa
                    color: Colors.white,  // Cor do ícone
                    size: 40.0,  // Tamanho do ícone
                  ),
                ),
              ),
              
              // Segundo ícone (estrela) com fundo amarelo
              Expanded(
                child: Container(
                  color: Colors.amber[400],  // Fundo amarelo
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Distribui os ícones dentro da coluna
                    children: [
                      Icon(
                        Icons.star,  // Ícone de estrela cheia
                        color: Colors.white,  // Cor do ícone
                        size: 40.0,  // Tamanho do ícone
                      ),
                      Icon(
                        Icons.star_border,  // Ícone de estrela vazia
                        color: Colors.white,  // Cor do ícone
                        size: 40.0,  // Tamanho do ícone
                      ),
                    ],
                  ),
                ),
              ),

              // Terceiro ícone (coração) com fundo rosa
              Expanded(
                child: Container(
                  color: Colors.pink[400],  // Fundo rosa
                  child: Icon(
                    Icons.favorite,  // Ícone de coração
                    color: Colors.white,  // Cor do ícone
                    size: 40.0,  // Tamanho do ícone
                  ),
                ),
              ),

              // Quarto ícone (configurações) com fundo ciano
              Expanded(
                child: Container(
                  color: Colors.cyan[400],  // Fundo ciano
                  child: Icon(
                    Icons.settings,  // Ícone de configurações
                    color: Colors.white,  // Cor do ícone
                    size: 40.0,  // Tamanho do ícone
                  ),
                ),
              ),
            ],
          ),
        ),

        // Última linha contendo o texto do curso
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.blueGrey[400],  // Define a cor de fundo do container como cinza azulado
                height: 100,  // Altura fixa de 100 pixels
                child: const Center(
                  // Centraliza o texto dentro do container
                  child: Text(
                    'Engenharia de software 3° ano',  // Texto exibido
                    style: TextStyle(
                      color: Colors.white,  // Cor do texto
                      fontStyle: FontStyle.italic,  // Define o estilo do texto como itálico
                      fontSize: 25.0,  // Tamanho da fonte
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

