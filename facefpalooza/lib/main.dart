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
        themeMode: ThemeMode.dark, // Define o tema padrão.
        debugShowCheckedModeBanner: false, // Removendo o banner de Debug
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepOrange, // Cor principal para o tema claro.
            brightness: Brightness.light,
          ),
          useMaterial3: true, 
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepOrange, // Cor principal para o tema escuro.
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Facefpalooza')); // Tela inicial do app.
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body:
            const ActList() 
        );
  }
}
