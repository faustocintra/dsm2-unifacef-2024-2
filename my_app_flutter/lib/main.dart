import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Layout(),
        ),
      ),
    );
  }
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: LightBlueBox(),
        ),
        FooterIcons(), 
      ],
    );
  }
}

class IconsRow extends StatelessWidget {
  const IconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround, // para deixar os icones espaçados entre si
      children: [
        Icon(Icons.home),
        Icon(Icons.history),
        Icon(Icons.account_balance),
        Icon(Icons.open_in_new),
      ],
    );
  }
}

class LightBlueBox extends StatelessWidget {
  const LightBlueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity, // ocupa todo espaço disponivel na tela 
      width: double.infinity,
      color: Colors.lightBlue[500],
    );
  }
}

class FooterIcons extends StatelessWidget {
  const FooterIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: const IconsRow(),
    );
  }
}
