import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primeira linha: Nome completo
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                height: 100,
                child: const Center(
                  child: Text(
                    'Maria Marcela Sousa Alves',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        // Segunda linha (placeholder por enquanto)
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 100,
              ),
            ),
          ],
        ),
        // Terceira linha com 4 colunas
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: Container(color: Colors.blue[400])),
              Expanded(child: Container(color: Colors.amber[400])),
              Expanded(child: Container(color: Colors.pink[400])),
              Expanded(child: Container(color: Colors.orange[400])),
            ],
          ),
        ),
        // Última linha (placeholder por enquanto)
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.orange[400],
                height: 100,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
