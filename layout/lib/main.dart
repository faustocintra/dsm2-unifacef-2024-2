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
      children: <Widget>[
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
      height: 205,
      width: double.infinity, //largura total
      color: Colors.lightBlue[500],
    );
  }
}

class IndigoBox extends StatelessWidget {
  const IndigoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 320,
      color: Colors.indigo[800],
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
    // Stack exibe os children empilhados um em cima do outro
    return const Stack(
      alignment: Alignment.center,
      children: [LightBlueBox(), IndigoBox(), Logo()],
    );
  }
}

class InfoPanel extends StatelessWidget {
  const InfoPanel({super.key});

  @override
  Widget build(BuildContext context) {
    // Expanded ocupa todo o espaco disponivel na vertical
    return Expanded(
        child: Container(
      color: Colors.yellow[200],
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Exemplo de layout",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.indigo[600],
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            "Desenvolvimento por Leandro Vieira",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 16,
            ),
          )
        ],
      ),
    ));
  }
}
