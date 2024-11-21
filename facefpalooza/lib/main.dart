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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false; // Aqui ele controla para alternar entre modos

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facefpalooza',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light, // Aqui ele alterna os temas
      home: MyHomePage(
        title: 'Facefpalooza',
        toggleDarkMode: () {
          setState(() {
            _isDarkMode = !_isDarkMode; // Aqui ele alterna o valor do tema
          });
        },
      ),
      debugShowCheckedModeBanner: false,  //Aqui retiramos a linha da diagonal com o escrito debug
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.toggleDarkMode});

  final String title;
  final VoidCallback toggleDarkMode;

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
        actions: [
          IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.light_mode // Ícone de ligth mode
                  : Icons.dark_mode, //Ícone de darkk mode
            ),
            onPressed: widget.toggleDarkMode, // Aqui chama o método para alternar entre os modos
          ),
        ],
      ),
      body: const ActList(), // Aqui está o widget da lista
    );
  }
}