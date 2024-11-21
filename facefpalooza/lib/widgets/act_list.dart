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
          .orderBy('day') // Ordena pelo dia
          .orderBy('relevance') // Ordena pela relevância
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        var list = snapshot.data?.docs ?? [];

        return ListView(
          children: list.map<Widget>((act) {
            return ListTile(
              trailing: CircleAvatar(child: Text("${act['day']}")), //alterei a função de leading para trailing, para mover a data para o lado direito
              title: Text(
                act['name'],
                style: TextStyle(
                  fontSize: 20, // Aumenta o tamanho da fonte
                  fontWeight: FontWeight.bold, // Deixa o texto em negrito
                ),
              ),
              subtitle: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: act['tags']
                    .map<Widget>((tag) => Chip(
                          label: Text("#$tag"),
                          backgroundColor:
                              Colors.blueGrey, // Cor de fundo do Chip
                        ))
                    .toList(),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
