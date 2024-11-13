import 'package:flutter/material.dart';
import 'widget/acts_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Garante a inicialização correta de widgets antes de executar o app.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions
        .currentPlatform, // Inicializa o Firebase com as opções configuradas.
  );
  runApp(const MyApp()); // Executa o app principal.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Facefpalooza', // Nome do aplicativo exibido nos dispositivos.
        themeMode: ThemeMode.dark, // Define o tema padrão como escuro.
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightBlue, // Cor principal para o tema claro.
            brightness: Brightness.light,
          ),
          useMaterial3: true, // Habilita Material Design 3.
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightBlue, // Cor principal para o tema escuro.
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Facefpalooza')); // Tela inicial do app.
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title; // Título passado como parâmetro ao widget.

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context)
              .colorScheme
              .inversePrimary, // Cor do AppBar baseada no tema atual.
          title: Text(widget.title), // Exibe o título recebido como parâmetro.
        ),
        body:
            const ActList()); // Corpo da tela exibe a lista de "acts" usando o widget ActList.
  }
}
