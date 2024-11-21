import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

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
              trailing: CircleAvatar(
                child: Text("${act['day']}"), // alinhando a data para direita
              ),
              title: Text(
                act['name'],
                style: const TextStyle(
                  fontSize: 20.0, // Aumenta o tamanho da fonte
                  fontWeight: FontWeight.bold, // Define a fonte como negrito
                ),
              ),
              subtitle: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: act['tags']
                    .map<Widget>((tag) => Chip(label: Text("#$tag")))
                    .toList(),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
