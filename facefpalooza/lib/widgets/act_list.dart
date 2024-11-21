import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        //Para fazer a ordenação, primeiro criei um index no firebase, com os campos day e relevance
        stream: FirebaseFirestore.instance
            .collection('acts')
            .orderBy('day') //Ordenando primeiramente por dia
            .orderBy('relevance',
                descending:
                    true) //Ordenando por relevância, de maneira decrescente
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                //o elemento trailing eh exibido do lado direito,
                //diferente do elemento leading
                trailing: CircleAvatar(
                    child: Text(
                  "${act['day']}",
                )),
                title: Text(
                  //Mudando estilo do nome dos artistas
                  act['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(
                              label: Text(
                                "#$tag",
                                style: const TextStyle(color: Colors.black),
                              ),
                              //Adicionando cor de fundo ao chip
                              backgroundColor: Colors.red.shade100,
                            ))
                        .toList()));
          }).toList());
        });
  }
}