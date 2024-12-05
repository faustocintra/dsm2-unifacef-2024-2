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
            .orderBy('name') // Ordenando por ondem alfabetica
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                trailing: CircleAvatar(
                    child: Text(
                  "${act['day']}",
                )),
                title: Text(
                 
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
                                style: const TextStyle(color: Colors.black,
                                                      fontStyle: FontStyle.italic,),  // Fonte em itálico
                              ),
                              //Adicionei fundo ao chip
                              backgroundColor: Colors.blue,
                            ))
                        .toList()));
          }).toList());
        });
  }
}