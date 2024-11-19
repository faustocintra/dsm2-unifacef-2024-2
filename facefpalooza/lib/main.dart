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

// Definição do app com tema escuro fixo e cor secundária personalizada
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facefpalooza',
      theme: ThemeData(
        // Estabelecendo um esquema de cores com uma cor secundária
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        // Tema escuro
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark, // Ativando a aparência escura
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark, // Define o uso constante do tema escuro
      home: const MyHomePage(title: 'Facefpalooza'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // O MyHomePage é o ponto de entrada para o conteúdo principal da aplicação. Ele é "stateful",
  // permitindo que seu estado seja alterado e refletido na interface do usuário. 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Alteramos o contador e notificamos o Flutter para reconstruir o widget.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este método é chamado sempre que o estado muda, como resultado do _incrementCounter.
    //
    // O Flutter torna esse processo eficiente, reconstruindo apenas os elementos necessários.
    return Scaffold(
      appBar: AppBar(
        // Definindo a cor do AppBar com base no esquema de cores inverso.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // Utilizando o título passado para MyHomePage
      ),
      body: const ActList() // Exibe a lista de atos do evento
    );
  }
}