import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  @override
  Widget build(BuildContext context) {
    // Código para ordenar por dia e, depois, por relevância
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
              trailing: CircleAvatar(child: Text("${act['day']}")), // Alinha à direita
              title: Align(
                alignment: Alignment.centerRight, // Alinha o texto à direita
                child: Text(
                  act['nome'],
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Align(
                alignment: Alignment.centerRight, // Alinha os chips à direita
                child: Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  alignment: WrapAlignment.end, // Ajusta a posição dos chips
                  children: act['tags']
                      .map<Widget>(
                        (tag) => Chip(
                          label: Text("#$tag"),
                          backgroundColor: Colors.lightBlue.shade200,
                        ),
                      )
                      .toList(),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}