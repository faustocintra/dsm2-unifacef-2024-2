import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('acts')
            .orderBy('day') // Ordena pelo campo 'day'
            .orderBy('relevance', descending: true) // Ordena por 'relevance' de forma decrescente
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
              // A data será exibida dentro de uma bolinha (CircleAvatar)
              trailing: CircleAvatar(
                radius: 20, // Tamanho do círculo
                backgroundColor: Colors.deepPurple, // Cor de fundo da bolinha
                child: Text(
                  "${act['day']}", // A data que será exibida
                  style: const TextStyle(
                    color: Colors.white, // Cor do texto dentro do círculo
                    fontWeight: FontWeight.bold, // Deixa a data em negrito
                    fontSize: 16, // Tamanho da fonte
                  ),
                ),
              ),
              title: Text(
                act['name'], // Nome do artista
                style: const TextStyle(
                  fontWeight: FontWeight.bold, // Nome em negrito
                  fontSize: 20, // Tamanho do nome
                ),
              ),
              subtitle: Wrap(
                spacing: 8, // Espaçamento horizontal entre as tags
                runSpacing: 4, // Espaçamento vertical entre as tags
                children: act['tags']
                    .map<Widget>((tag) => Chip(
                          label: Text(
                            "#$tag", // Exibe a tag com o prefixo "#"
                            style: const TextStyle(color: Colors.black),
                          ),
                          backgroundColor: Colors.amber.shade100, // Cor do chip
                        ))
                    .toList(),
              ),
            );
          }).toList());
        });
  }
}