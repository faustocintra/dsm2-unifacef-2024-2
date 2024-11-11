import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
  //abaixo está o codigo de ordernar por dia, e depois a segunda order por relevancia
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('acts')
          .orderBy('day') // Primeira ordem de prioridade
          .orderBy('relevance') // Segunda ordem de prioridade
          .snapshots(),
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
                act['nome'],
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ), 
              ),
              subtitle: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: act['tags']
                    .map<Widget>((tag) => Chip(
                          label: Text("#$tag"),
                          backgroundColor: Colors.lightBlue.shade200,
                        ))
                    .toList(),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
