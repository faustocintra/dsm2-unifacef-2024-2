class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primeira linha 
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                height: 100,
              ),
            ),
          ],
        ),
        // Segunda linha
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
