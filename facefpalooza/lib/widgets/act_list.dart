import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

//Foi criado do Widget e feita suas alterações de cores
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
              leading: CircleAvatar(child: Text("${act['day']}")),
              title: Text(
                act['name'],
                style: TextStyle(fontWeight: FontWeight.bold), // Colocando o nome em negrito
              ),
             subtitle: Wrap(
             spacing: 8,
             runSpacing: 4,
             children: act['tags']
      .map<Widget>((tag) => Chip(
  label: Text("#$tag"),
  backgroundColor: Theme.of(context).colorScheme.secondary, // Usando a cor primária do tema
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
