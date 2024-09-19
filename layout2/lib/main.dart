import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício de Layout',
      home: Scaffold(
        backgroundColor: Colors.grey[400], // Fundo da tela
        appBar: AppBar(
          title: const Text('Exercício de Layout'),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.red[400],
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Igor Pereira Campos',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold, 
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
                  color: Colors.lime[200], // Verde Limão tonalidade 200
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
                          Icon(Icons.code, size: 50, color: Colors.white),
                          Spacer(), // Espaçamento entre os ícones
                          Icon(Icons.bug_report, size: 50, color: Colors.white), 
                        ],
                      ),
                    ),
                  ),
                  // Segunda coluna com um ícone
                  Expanded(
                    child: Container(
                      color: Colors.red[400],
                      child: const Center(
                        child: Icon(Icons.access_alarm, size: 50, color: Colors.white), 
                      ),
                    ),
                  ),
                  // Terceira coluna com um ícone
                  Expanded(
                    child: Container(
                      color: Colors.orange[400],
                      child: const Center(
                        child: Icon(Icons.developer_mode, size: 50, color: Colors.white),
                      ),
                    ),
                  ),
                  // Quarta coluna com um ícone
                  Expanded(
                    child: Container(
                      color: Colors.teal[400],
                      child: const Center(
                        child: Icon(Icons.computer, size: 50, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Última linha
            Container(
              color: Colors.blue[400], // Cor de fundo
              alignment: Alignment.centerRight, // Alinhamento à direita
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Curso: Engenharia de Software',
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
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