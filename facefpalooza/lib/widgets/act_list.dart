import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('acts').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                // Mudando a posição do campo 'day' para o lado direito (trailing)
                title: Text(
                  act['name'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), // Nome em negrito e fonte aumentada
                ),
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(
                              label: Text("#$tag"),
                              backgroundColor: Colors.grey[500], // Alterando a cor do Chip
                            ))
                        .toList()),
                trailing: CircleAvatar(
                  child: Text("${act['day']}"), // Exibindo a data no lado direito
                ));
          }).toList());
        });
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //para tirar a faixa iniciei o flutter run no release
    return MaterialApp(
      debugShowCheckedModeBanner: false, // tentando remover a faixa "Debug"
      home: Scaffold(
        appBar: AppBar(
          title: Text('Facefpalooza'),
        ),
        body: const ActList(),
      ),
    );
  }
}