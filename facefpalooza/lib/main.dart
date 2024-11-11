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
      theme: Provider.of<ModeProvider>(context).lightModeEnable
          ? ModeTheme.lightMode
          : ModeTheme.darkMode,
      home: MyHomePage(
        Provider.of<ModeProvider>(context).lightModeEnable,
        title: "Facefpalooza",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  bool isLight;

  MyHomePage(this.isLight, {super.key, required this.title});

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
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          actions: [
            ElevatedButton.icon(
              // Ícone do botão
              onPressed: () {
                Provider.of<ModeProvider>(context, listen: false).chaneMode();
                setState(() {
                  widget.isLight = !widget.isLight; // Alterando o valor de isLight
                });
              },
             
              icon:  const Icon(Icons.dark_mode),
              label: Text(widget.isLight ? "light" : "dark"),
            ),
          ],
        ),
        body:
            const ActList() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
