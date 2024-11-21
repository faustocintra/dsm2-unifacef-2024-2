import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});
  final data = lineup;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        // Ordenação no Firestore: primeiro por 'day', depois por 'relevance' (decrescente)
        stream: FirebaseFirestore.instance
            .collection('acts')
            .orderBy('day')
            .orderBy('relevance', descending: true)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            // Exibe loading se não há dados
            return const Center(child: CircularProgressIndicator());
          }
          var list = snapshot.data?.docs ?? [];
          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                // Ícone à esquerda com o número do dia
                leading: CircleAvatar(child: Text("${act['day']}")),
                // Ícone à direita com o número do dia
                trailing: CircleAvatar(
                  child: Text("${act['day']}"),
                ),
                // Nome do artista com estilo negrito e maior fonte
                title: Text(
                  act['name'],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                // Lista de tags com estilo de Chip
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(
                              label: Text(
                                "#$tag",
                                style: const TextStyle(color: Colors.black),
                              ),
                              // Cor de fundo do Chip com opacidade
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.2),
                            ))
                        .toList()));
          }).toList());
        });
  }
}