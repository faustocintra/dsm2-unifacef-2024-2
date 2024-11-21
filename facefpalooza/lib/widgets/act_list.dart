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
          .orderBy('day', descending: true)
          .snapshots(), // Ordenando os dias em ordem decrescente
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        var list = snapshot.data?.docs ?? [];

        return ListView(
          children: list.map<Widget>((act) {
            return ListTile(
              trailing: CircleAvatar(child: Text("${act['day']}")), // Exibe o dia no canto direito
              title: Text(
                act['name'],
                style: TextStyle(fontWeight: FontWeight.bold), // Nome em negrito
              ),
              subtitle: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: act['tags']
                    .map<Widget>((tag) => Chip(
                          label: Text("#$tag"),
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary, // Cor do Chip
                          labelStyle: TextStyle(color: Colors.white), // Cor do texto
                        ))
                    .toList(), // Cria um Chip para cada tag
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
