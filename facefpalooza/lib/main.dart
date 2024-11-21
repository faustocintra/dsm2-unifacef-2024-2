import 'package:facefpalooza/provider/mode_provider.dart';
import 'package:facefpalooza/theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/act_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
        create: (context) => ModeProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facefpalooza',
      debugShowCheckedModeBanner: false, // Tirando o banner "debug"
      // Definindo o tema com base na função "lightModeEnable" da pasta provider/mode_provider.dart 
      theme: Provider.of<ModeProvider>(context).lightModeEnable
          ? ModeTheme.lightMode // Se o modo claro tiver habilitado, o thema será light
          : ModeTheme.darkMode, // Se não, irá ser o tema dark
      home: MyHomePage(
        Provider.of<ModeProvider>(context).lightModeEnable, // Passando o valor de "lightModeEnable" na tela inicial 
        title: "Facefpalooza",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  bool isLight;

  MyHomePage(this.isLight, {super.key, required this.title}); // Parâmetro para indicar se o tema está claro ou escuro

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
          actions: [

            // Botão para alternar entre os modos claro/escuro
            ElevatedButton.icon(
              // Ação ao pressionar o botão
              onPressed: () {
                Provider.of<ModeProvider>(context, listen: false).chaneMode();
                setState(() {
                  widget.isLight = !widget.isLight; // Alternando o valor de isLight
                });
              },
             
              icon:  const Icon(Icons.dark_mode),
              label: Text(widget.isLight ? "light" : "dark"), // O texto do botão alterna entre "light" e "dark"
            ),
          ],
        ),
        body:
            const ActList()
            // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
