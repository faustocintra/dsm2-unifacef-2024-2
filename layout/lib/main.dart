import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(//esqueleto
        body: Center(//central - centraliza
          child: Layout(),//class Layout
        ),
      ),
    );
  }
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      IconsRow(),
      Stacked(),
      InfoPanel()
    ],);
  }
}

class IconsRow extends StatelessWidget {
  const IconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(//componente, onde os filhos ficam em linha - maisAxis (eixo) é horizontal
      mainAxisAlignment: MainAxisAlignment.spaceAround,//dá o espaçamento
      children: [
        Icon(Icons.home),//link para ver os ícones existentes: fonts.google.com/icons
        Icon(Icons.history),
        Icon(Icons.account_balance),
        Icon(Icons.open_in_new),
      ], );
  }
}

class LightBlueBox extends StatelessWidget {//container onde foi especificado  a altura e a largura seria toda a largura disponível
  const LightBlueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,   // largura total
      color: Colors.lightBlue[500]//cores no linl: materialpalette.com/colors
    );
  }
}

class IndigoBox extends StatelessWidget {//praticamente a mesma coisa, porém, menor com Width limitado
  const IndigoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 320,
      color: Colors.indigo.shade800,
    );
  }
}

class Logo extends StatelessWidget {//Image.network, busca a imagem em qualquer lugar, caso, seja apresentado o endereço da mesma.
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network('https://www.unifacef.com.br/wp-content/uploads/2016/02/logo-branco-G-e1460660351677.png');
  }
}

class Stacked extends StatelessWidget {//classe utilizada para empilhar os components
  const Stacked({super.key});

  @override
  Widget build(BuildContext context) {
    // Stack exibe seus filhos (children) empilhados uns sobre os outros
    return const Stack(
      alignment: Alignment.center, 
      children:[
        LightBlueBox(),
        LightBlueBox(),
        IndigoBox(),
        Logo()
      ],);
  }
}

class InfoPanel extends StatelessWidget {
  const InfoPanel({super.key});

  @override
  Widget build(BuildContext context) {
    // Expanded ocupa todo o espaço disponível na vertical
    return Expanded(//Expanded faz com que seja utilizado todo o espaço vertical restante na página
        child: Container(
            color: Colors.yellow[200], // ou: Colors.yellow.shade200
            padding: const EdgeInsets.all(20),//margem de 20
            child: Column(//coloca  os filhos empilhados pelo mainAxis (eixo) que é vertical neste caso
                crossAxisAlignment: CrossAxisAlignment.stretch,//quero que seja utilizado todo o espaço do crossAxis que é horizontal neste caso
                mainAxisAlignment: MainAxisAlignment.spaceBetween,//coloca um espaço entre os textos
                children: [
                  Text("Exemplo de layout Flutter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.indigo.shade600,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  const Text("Desenvolvido por mim",
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 16))
                ])));
  }
}