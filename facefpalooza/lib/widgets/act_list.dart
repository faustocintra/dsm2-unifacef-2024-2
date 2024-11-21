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
            //ordens
            .orderBy('day') // por dia
            .orderBy('relevance') // por relevancia
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                trailing: CircleAvatar(
                    child: Text("${act['day']}")), //alteração das colunas
                //estilo do texto
                title: Text(act['name'],
                    style: const TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold)),
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(
                            // Widget Chip
                            label: Text("#$tag"),
                            //cor de fundo
                            backgroundColor: Colors.green))
                        .toList()));
          }).toList());
        });
  }
}
