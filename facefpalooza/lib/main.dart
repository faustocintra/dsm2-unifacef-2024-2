import 'package:flutter/material.dart';
import 'widgets/act_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facefpalooza',
      themeMode: ThemeMode.dark, // Modo do tema (segue o sistema)

      // Configuração do tema claro
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          //Adicionando o brightness para definir o tema claro
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),

      // Configuração do tema escuro que segue a mesma ordem do tema padrão claro
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          //Adicionando o brightness para definir o tema escuro
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        //Adicioando o chipThema para estilizar as tags
        chipTheme: const ChipThemeData(
          backgroundColor: Colors.deepPurple, //Cor de fundo das tags
        ),
      ),

      home: const MyHomePage(title: 'Facefpalooza'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: const ActList());
  }
}
