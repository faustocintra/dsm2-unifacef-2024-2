import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('acts')
        //orderBy day e relevance para ordenar pelo dia e relevância. Assim como requisitado no trabalho
        //foi necessário criar um index na database firestore para conseguir executar a query
        .orderBy("day")
        .orderBy("relevance") 
        .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                title: Text(
                  act['name'],
                  //Adicionando style para definir a fonte como "bold", negrito
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(label: Text("#$tag")))
                        .toList()),

                // Troquei a linha para o final para maior legibilidade, tendo em vista que este elemento está no final da linha agora. Além disso alterei de leading para trailing, para que ficasse no fim, efetivamente a direita
                trailing: CircleAvatar(child: Text("${act['day']}")),
                );
          }).toList());
        });
  }
}
