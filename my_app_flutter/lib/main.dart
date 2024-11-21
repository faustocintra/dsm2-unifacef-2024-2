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
      children: [IconsRow(), Stacked(), InfoPanel()],
    );
  }
}

class IconsRow extends StatelessWidget {
  const IconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.home),
        Icon(Icons.history),
        Icon(Icons.account_balance),
        Icon(Icons.open_in_new)
      ],
    );
  }
}

class LightBlueBox extends StatelessWidget {
  const LightBlueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: double.infinity, // largura total
        color: Colors.lightBlue[500]);
  }
}

class IndigoBox extends StatelessWidget {
  const IndigoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 320,
        color: Colors.indigo.shade800 // ou: Colors.indigo[800]
        );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
        'https://www.unifacef.com.br/wp-content/uploads/2016/02/logo-branco.png');
  }
}

class Stacked extends StatelessWidget {
  const Stacked({super.key});

  @override
  Widget build(BuildContext context) {
    // Stack exibe seus filhos (children) emStackeddos uns sobre os outros
    return const Stack(
        alignment: Alignment.center,
        children: [LightBlueBox(), IndigoBox(), Logo()]);
  }
}

class InfoPanel extends StatelessWidget {
  const InfoPanel({super.key});

  @override
  Widget build(BuildContext context) {
    // Expanded ocupa todo o espaço disponível na vertical
    return Expanded(
        child: Container(
            color: Colors.cyan[100], // ou: Colors.yellow.shade200
            padding: const EdgeInsets.all(20),
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Layout Flutter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Text("Desenvolvido por Breno Martins Oliveira",
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 16)),
                  Text("Uni-FACEF",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 12))
                ])));
  }
}
