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
            // Ordenando primeiro por dia e depois por relevância
            .collection('acts')
            .orderBy('day') // Dia
            .orderBy('relevance') // Relevância
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                leading: CircleAvatar(child: Text("${act['day']}")),
                title: Text(act['name'],
                style: const TextStyle(
                  fontSize: 20, // Aumenta o tamanho da fonte
                  fontWeight: FontWeight.bold, // Coloca em negrito
                ),
                ),
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        // Widget Chip com cor mudada para "indigo"
                        .map<Widget>((tag) => Chip(label: Text("#$tag"), backgroundColor: Colors.indigoAccent,))
                        .toList()));
          }).toList());
        });
  }
}
