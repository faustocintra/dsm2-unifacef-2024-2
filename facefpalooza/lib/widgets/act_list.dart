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
            .orderBy('day') //Ordenando o dia
            .orderBy('relevance',
                descending:
                    true) //Ordenando por relevância
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                //O elemento trailing está no lado direito
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
                              //Adicionando cor de fundo
                              backgroundColor: Colors.red.shade100,
                            ))
                        .toList()));
          }).toList());
        });
  }
}