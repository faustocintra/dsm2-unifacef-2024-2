import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900], // Fundo do container
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('acts').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
            children: list.map<Widget>((act) {
              return ListTile(
                leading: null, // Removemos o `leading` padrão
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinha o conteúdo
                  children: [
                    Text(
                      act['name'], // Nome do ato
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      child: Text(
                        "${act['day']}", // Data
                        style: const TextStyle(color: Colors.white), // Texto branco no avatar
                      ),
                      backgroundColor: Colors.deepPurple,
                    ),
                  ],
                ),
                subtitle: Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: act['tags']
                      .map<Widget>((tag) => Chip(
                            label: Text(
                              "#$tag",
                              style: const TextStyle(color: Colors.black), // Texto preto no chip
                            ),
                            backgroundColor: Colors.white,
                          ))
                      .toList(),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
