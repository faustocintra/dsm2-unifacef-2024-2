import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

//Widget e  suas alterações de cores
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('acts').orderBy('day', descending: true).snapshots(), // Ordenando os dias em ordem descrecente 
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        var list = snapshot.data?.docs ?? [];

        return ListView(
          children: list.map<Widget>((act) {
            return ListTile(
              trailing: CircleAvatar(child: Text("${act['day']}")), // alterando trainling mudar de lado os dias dentro da lineup
              title: Text(
                act['name'],
                style: TextStyle(fontWeight: FontWeight.bold), //o nome em negrito
              ),
             subtitle: Wrap(
             spacing: 8,
             runSpacing: 4,
             children: act['tags']
      .map<Widget>((tag) => Chip(
  label: Text("#$tag"),
  backgroundColor: Theme.of(context).colorScheme.secondary, //cor primária do tema
  labelStyle: TextStyle(color: Colors.white), // Cor do texto dentro do Chip
)
) // Criando um Chip para cada tag
      .toList(),
),

            );
          }).toList(),
        );
      },
    );
  }
}
