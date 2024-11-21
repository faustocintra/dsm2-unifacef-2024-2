import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício de Layout',
      home: Scaffold(
        backgroundColor: Colors.black, // Fundo da tela
        appBar: AppBar(
          title: const Text('Exercício de Layout'),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.lightBlue[200],
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Eder Junior Alves Silva',
                style: TextStyle(
                  fontSize: 30,
<<<<<<< HEAD
                  fontWeight: FontWeight.bold, // Negrito
=======
                  color: Colors.lime[200], //cor
                ),
                textAlign: TextAlign.center, //alinhamento do texto
              ),
            ))
          ],
        ),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container(
              color: Colors.purple[400],
                child: const Column( //coluna com dois icones
                  children: [
                    Icon(Icons.android, size: 50, color: Colors.white), // cor do icone superior trocada para branca
                    Spacer(), // espaçamento dos ícones
                    Icon(Icons.smartphone, size: 50, color: Colors.white), // cor do icone inferior trocada para branca
                  ],
                )
              )),
            Expanded(child: Container(
              color: Colors.cyan[400],
                child: const Center( //coluna com um icone
                  child: Icon(Icons.code, size: 50, color: Colors.white), // cor do icone trocada para branca
                ),
              )),
            Expanded(child: Container(
              color: Colors.teal[400],
                child: const Center( //coluna com um icone
                  child: Icon(Icons.code_off, size: 50, color: Colors.white), // cor do icone trocada para branca
                ),
              )),
            Expanded(child: Container( 
              color: Colors.lime[400],
                child: const Center( //coluna com um icone
                  child: Icon(Icons.devices, size: 50, color: Colors.white), // cor do icone trocada para branca
                ),
              )),
          ],
        )),
        //linha adicional
        Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.red[400],
                            height: 150,
              alignment: Alignment.centerRight, //alinhamento do conteudo
              padding: const EdgeInsets.all(16),
              child: const Text( //nome da turma e estilização do texto
                'Engenharia de Software',
                style: TextStyle(
                  fontSize: 25, //tamanho da fonte
                  fontStyle: FontStyle.italic, //estilo da fonte
>>>>>>> 97fd6ab97bd0d7a4aaebbb1a86cb4adac95ea0eb
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: Text(
                'Data da Prova: 19/09/2024',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.lightGreen[200], // Laranja escuro tonalidade 300
                ),
                textAlign: TextAlign.center, 
              ),
            ),
            // Quatro colunas com ícones e cores de fundo em tonalidade 400
            Expanded(
              child: Row(
                children: [
                  // Primeira coluna com dois ícones
                  Expanded(
                    child: Container(
                      color: Colors.purple[400],
                      child: const Column(
                        children: [
                          Icon(Icons.code, size: 50, color: Colors.white), // Ícone (superior)
                          Spacer(), // Espaçamento entre os ícones
                          Icon(Icons.bug_report, size: 50, color: Colors.white), // Ícone (inferior)
                        ],
                      ),
                    ),
                  ),
                  // Segunda coluna com um ícone
                  Expanded(
                    child: Container(
                      color: Colors.teal[400],
                      child: const Center(
                        child: Icon(Icons.computer, size: 50, color: Colors.white), // Ícone de computador
                      ),
                    ),
                  ),
                  // Terceira coluna com um ícone
                  Expanded(
                    child: Container(
                      color: Colors.orange[400],
                      child: const Center(
                        child: Icon(Icons.developer_mode, size: 50, color: Colors.white), // Ícone de desenvolvedor
                      ),
                    ),
                  ),
                  // Quarta coluna com um ícone
                  Expanded(
                    child: Container(
                      color: Colors.green[400],
                      child: const Center(
                        child: Icon(Icons.memory, size: 50, color: Colors.white), // Ícone de memória
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Última linha: Nome da turma
            Container(
              color: Colors.blue[400], // Cor de fundo para a última linha
              alignment: Alignment.centerRight, // Alinhamento à direita
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Turma: Engenharia de Software',
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic, // itálico
                  color: Colors.white,
                ),
                textAlign: TextAlign.right, // Alinhamento à direita
              ),
            ),
          ],
        ),
      ),
    );
  }
}
