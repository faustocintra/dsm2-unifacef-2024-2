import 'package:flutter/material.dart';
// Importa o pacote Flutter para usar os widgets e funcionalidades

void main() {
  runApp(const MyApp());
  // Função principal inicia o aplicativo
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // Título do aplicativo
      debugShowCheckedModeBanner: false, // Remove faixa de debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Define o tema do aplicativo
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // Define página inicial do aplicativo
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Layout());
    // Layout da página inicial
  }
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primeira linha - nome completo
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                height: 150,
                child: const Center(
                  child: Text(
                    'Laysa Camille Viveiros', // Texto primeira linha
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Segunda linha - data da prova
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 150,
                child: Center(
                  child: Text(
                    'Data: 19/09/2024', // Texto segunda linha
                    style: TextStyle(
                      color: Colors.lime[200], // Cor verde limão tonalidade 200
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Terceira linha com quatro colunas
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.star, size: 50, color: Colors.white), // Ícone de estrela preenchida, branco
                      Icon(Icons.star_border, size: 50, color: Colors.white), // Ícone de estrela vazia, branco
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child: const Center(
                    child: Icon(Icons.favorite, size: 50, color: Colors.white), // Ícone de coração, branco
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: const Center(
                    child: Icon(Icons.thumb_up, size: 50, color: Colors.white), // Ícone de polegar para cima, branco
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal[400],
                  child: const Center(
                    child: Icon(Icons.thumb_down, size: 50, color: Colors.white), // Ícone de polegar para baixo, branco
                  ),
                ),
              ),
            ],
          ),
        ),
        // Última linha com curso
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red[400],
                height: 100,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Engenharia de Software', // Texto última linha
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
//EXPLICAÇÃO ALTERAÇÕES PROVA 1:
//Para realizar as modificações solicitadas no código, eu segui o seguinte raciocínio:
//Alteração da cor do texto da data para verde limão (tonalidade 200):
//Eu ajustei a cor do texto da data modificando a propriedade color no estilo (TextStyle) da linha onde a data está sendo exibida. Escolhi a cor Colors.lime[200],que corresponde ao verde limão na tonalidade 200, conforme solicitado.
//
//Aplicação da cor branca para todos os ícones:
//Para que todos os ícones ficassem na cor branca, adicionei a propriedade color: Colors.white em cada Icon presente nas colunas da terceira linha. Isso garantiu que todos os ícones tivessem a mesma cor, mantendo a consistência no design.
//Eu procurei manter a estrutura original do layout2 que criei, realizando as alterações de forma direta, garantindo que o código continuasse organizado e claro.
//
//
//