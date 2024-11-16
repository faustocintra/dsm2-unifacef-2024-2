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
  // Variável para controlar o tema (claro ou escuro)
  bool _isDarkMode = false;

  // Função para alternar entre os temas
    // Adicionando suporte para alternância de tema (claro/escuro) no aplicativo.
    // 1. Criei a variável '_isDarkMode' para controlar se o tema atual é escuro ou claro.
    // 2. A função '_toggleTheme' altera o valor de '_isDarkMode' ao ser chamada, alternando entre os temas.
    // 3. No 'MaterialApp', configurei o 'theme' para o tema claro, e 'darkTheme' para o tema escuro, 
    //    utilizando 'colorScheme' para definir as cores e 'brightness' para o tema escuro.
    // 4. A propriedade 'themeMode' é dinâmica e depende do valor de '_isDarkMode'. Se 'true', o tema escuro é ativado, 
    //    caso contrário, o tema claro é aplicado.
    // 5. Na 'AppBar', foi adicionado um 'IconButton' com o ícone de brilho (brightness_6), que chama a função 'toggleTheme' 
    //    para alternar entre os temas quando pressionado.

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facefpalooza',
      theme: ThemeData(
        // Tema claro
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        // Tema escuro
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light, // Alterna entre os temas
      home: MyHomePage(
        title: 'Facefpalooza',
        toggleTheme: _toggleTheme, // Passa a função para o widget
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final VoidCallback toggleTheme; // Função de alternância de tema

  const MyHomePage({super.key, required this.title, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: toggleTheme, // Chama a função para alternar o tema
          ),
        ],
      ),
      body: const ActList(),
    );
  }
}
