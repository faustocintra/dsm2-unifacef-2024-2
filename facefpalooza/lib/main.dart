import 'package:flutter/material.dart';
import 'widgets/act_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // Retira a faixa de debug
  WidgetsApp.debugAllowBannerOverride = false;
  WidgetsFlutterBinding.ensureInitialized();
  // Conecta ao Firebase
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
  // Variável para controlar o tema
  ThemeMode _themeMode = ThemeMode.system;

  // Função para alternar entre temas
  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facefpalooza',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        brightness: Brightness.light, // Tema claro
      ),
      darkTheme: ThemeData.dark(), // Tema escuro
      themeMode: _themeMode, // O tema será ajustado conforme o estado
      home: MyHomePage(
        title: 'Facefpalooza',
        onThemeToggle: _toggleTheme, // Passa a função para o HomePage
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title, required this.onThemeToggle});

  final String title;
  final VoidCallback onThemeToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        actions: [
          // Botão para alternar entre os temas
          IconButton(
            icon: Icon(
              // Ícone depende do tema atual
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: onThemeToggle,
          ),
        ],
      ),
      body: const ActList(), // A lista de atividades será carregada
    );
  }
}
