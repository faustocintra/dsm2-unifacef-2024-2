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
            .orderBy('name') // Colocando em ordem alfabética
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                // Movendo o CircleAvatar para trailing (direita) ao invés de leading (esquerda)
                trailing: CircleAvatar(
                    child: Text(
                  "${act['day']}",
                )),
                title: Text(
                  //estilo do nome
                  act['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(
                              label: Text(
                                "#$tag",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic, // Aplicando fonte itálica
                                ),
                              ),
                              //cor de fundo
                              backgroundColor: Colors.orange.shade100,
                            ))
                        .toList()));
          }).toList());
        });
  }
}