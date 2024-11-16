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
          .orderBy('day', descending: false) // Ordena pelo campo 'day'
          .orderBy('relevance',
              descending: false) // Ordena pelo campo 'relevance'
          //para funcionar a ordenação composta tive que criar um índice no Firebase através do link de erro
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        var list = snapshot.data?.docs ?? [];

        return SingleChildScrollView(
          //tive que trocar pois não estava rolando a tela
          child: Column(
            children: list.map<Widget>((act) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    "${act['day']}",
                    style: const TextStyle(
                      fontSize: 28,
                      // Aumenta o tamanho da fonte, estava desproporcional
                    ),
                  ),
                ),
                title: Text(
                  act['name'], // Aqui é onde o nome da atração é exibido
                  style: const TextStyle(
                    fontWeight: FontWeight.bold, // Tornando o texto em negrito
                    fontSize: 28, // Aumentando o tamanho da fonte
                  ),
                ),
                subtitle: Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: act['tags'].map<Widget>((tag) {
                    return Chip(
                      label: Text(
                        "#$tag",
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white // Cor da fonte no tema escuro
                              : Colors.black, // Cor da fonte no tema claro
                        ),
                      ),
                      backgroundColor: Theme.of(context).brightness ==
                              Brightness.dark
                          ? Colors.purple[300] // Cor de fundo no tema escuro
                          : Colors.purple[100], // Cor de fundo no tema claro
                    );
                  }).toList(),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
