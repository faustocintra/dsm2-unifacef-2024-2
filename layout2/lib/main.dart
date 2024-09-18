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
        // Segunda linha: Data da prova
          Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 100,
                child: const Center(
                  child: Text(
                    '19/09/2024',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
      ],
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
