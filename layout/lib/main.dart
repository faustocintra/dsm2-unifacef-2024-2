@override
  Widget build(BuildContext context) {
    return const Column(children: [
      LightBlueBox(),
      IconsRow()
    ],);
    return const Column(
      children: [IconsRow(), Stacked(), InfoPanel()],
    );
  }
}

class IconsRow extends StatelessWidget {
        Icon(Icons.history),
        Icon(Icons.account_balance),
        Icon(Icons.open_in_new)
  }

class LightBlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,   // largura total
      color: Colors.lightBlue[500]
    );
        height: 250,
        width: double.infinity, // largura total
        color: Colors.lightBlue[500];
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
            color: Colors.yellow[200], // ou: Colors.yellow.shade200
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exemplo de layout Flutter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.indigo.shade600,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  const Text("Desenvolvido por Fausto G. Cintra",
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 16))
                ])));
  }
}