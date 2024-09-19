import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
//fonts.google.com/icons
//materialpalette.com/colors
// O widget MainApp é o ponto de entrada do aplicativo. Ele constrói o MaterialApp, 
// que define toda a interface da aplicação.
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp fornece a estrutura básica de uma aplicação Flutter, 
    // incluindo navegação, tema e outras configurações importantes.
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Layout(),
        ),
      ),
    );
  }
}

// O widget Layout organiza os componentes principais da tela em uma coluna,
// alinhando-os verticalmente.
class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        NameBox(),
        DateBox(),
        IconsRow(),
        ClassNameBox(),
      ],
    );
  }
}

// Exibe o nome completo do usuário dentro de um Container com cor de fundo.
class NameBox extends StatelessWidget {
  const NameBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Cor alterada de roxa para preta.
    return Container(
      color: Colors.black, 
      height: 100,
      width: double.infinity,
      child: const Center(
        child: Text(
          'Roberto L. C. Papacidero', 
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold, 
            fontSize: 30, 
          ),
        ),
      ),
    );
  }
}

// Exibe a data da prova dentro de um Container com cor de fundo.
class DateBox extends StatelessWidget {
  const DateBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Cor alterada de verde para rosa.
    return Container(
      color: Colors.pink[400], 
      height: 100,
      width: double.infinity,
      child: Center(
        child: Text(
          'Data da Prova: 19/09/2024',
          style: TextStyle(
            color: Colors.lime[200],
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

// Exibe uma linha de ícones (com várias colunas).
class IconsRow extends StatelessWidget {
  const IconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    // Row organiza widgets horizontalmente (lado a lado).
    return Expanded(
      // Expanded permite que a Row ocupe todo o espaço disponível.
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          IconColumn(),
          SingleIconBox(icon: Icons.person, color: Colors.amber),
          SingleIconBox(icon: Icons.phone, color: Colors.pink),
          SingleIconBox(icon: Icons.email, color: Colors.teal),
        ],
      ),
    );
  }
}

// Exibe uma coluna com dois ícones dentro de uma caixa azul.
class IconColumn extends StatelessWidget {
  const IconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    // Cor alterada de azul para roxo.
    return Expanded(
      child: Container(
        color: Colors.purple[400], 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.home, size: 50, color: Colors.white),
            Icon(Icons.star, size: 50, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

// Exibe um ícone dentro de um Container com cor personalizada.
class SingleIconBox extends StatelessWidget {
  final IconData icon;
  final MaterialColor color;

  const SingleIconBox({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color.shade400, 
        child: Center(
          child: Icon(icon, size: 50, color: Colors.white),
        ),
      ),
    );
  }
}

// Exibe o nome da turma no rodapé, alinhado à direita.
class ClassNameBox extends StatelessWidget {
  const ClassNameBox({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.orange[400], 
      height: 60,
      width: double.infinity,
      child: const Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Text(
            'Engenharia de Software 2024',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
