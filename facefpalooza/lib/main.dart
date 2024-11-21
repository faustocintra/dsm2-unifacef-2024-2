import 'package:flutter/material.dart';
import 'widgets/act_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Variável que guarda o estado do tema 
  bool _isDarkMode = false;

  // Função para alterar entre os 2 temas, invertendo o mesmo sempre que é chamada
  void toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FacefSpalooza',
      // Remove o banner de debug
      debugShowCheckedModeBanner: false,
      // Alteração do tema entre dark e light, passando os dados do tema para os widgets
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
    
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Facefpalooza'),
          actions: [
            IconButton(
              // Alterna os ícones entre os ícones do modo light e modo dark
              icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
              // Define a função que o mesmo puxa quando pressionado
              onPressed: toggleTheme,
            ),
          ],
          // Alterna as cores especificamente da barra onde está escrito facefpalooza para que a mesma não fique apenas branca ou preta
          backgroundColor: _isDarkMode ? Colors.deepPurple : Colors.deepPurple[200]
        ),
        body: ActList(),
      ),
    );
  }
}

/**  
  Fiz uma limpeza nos comentários pois existiam vários comentários gerados, acredito pelo flutter, que eram desnecessários. Em um geral, as únicas alterações feitas no código main foram pra adicionar as funcionalidades relacionadas com os temas claro e escuro. Fora isso a maioria das alterações foi no arquivo "/lib/widgets/act_list.dart"
**/