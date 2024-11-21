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
            //utilizando o orderBy para ordenar os dados recebidos pelo firebase
            .orderBy('day') // Ordenando por dia
            .orderBy('relevance') // Ordenando por relevância
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
            children: list.map<Widget>((act) {
              return ListTile(
                //Junto ao titúlo, é adicionado uma const textStyle para modificarmos o estilo do texto, adicionando tamanho e peso da fonte
                title: Text(
                  act['name'] ?? 'Sem nome',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: (act['tags'] as List<dynamic>?)
                          ?.map<Widget>((tag) => Chip(
                                backgroundColor: Colors.deepPurple,
                                label: Text(
                                  "#$tag",
                                ),
                              ))
                          .toList() ??
                      [],
                ),
                // Foi removido o leading no começo do ListTile e adicionado o trailing para refereciao ao final de cada elemento
                trailing: CircleAvatar(
                  child: Text("${act['day']}"),
                ),
              );
            }).toList(),
          );
        });
  }
}
