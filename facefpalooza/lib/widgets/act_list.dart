import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('acts')
            // ordenando os dados day primeiro
            .orderBy('day')
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
              children: list.map<Widget>((act) {
            var listTile = ListTile(
                // mudando a data para o lado direito
                trailing: CircleAvatar(child: Text("${act['day']}")),
                title: Text(
                  act['name'],
                  style: const TextStyle(
                    fontSize: 18, // Aumenta o tamanho da fonte
                    fontWeight: FontWeight.bold, // Deixa o texto em negrito
                  ),
                ),
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(
                            label: Text("#$tag"),
                            //Colocando cor de fundo no Widget
                            backgroundColor:
                                const Color.fromARGB(255, 105, 95, 3)))
                        .toList()));
            return listTile;
          }).toList());
        });
  }
}
