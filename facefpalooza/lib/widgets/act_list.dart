import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900], // Fundo usando cor da paleta Material Design
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
                leading: CircleAvatar(
                  child: Text("${act['day']}"),
                  foregroundColor: Color(0xFFFAFAFA), // Texto branco no avatar
                ),
                title: Text(
                  act['name'],
                  style: TextStyle(
                    fontSize: 20, // Tamanho maior da fonte
                    fontWeight: FontWeight.bold, // Texto em negrito
                    color: Color(0xFFFAFAFA), // Cor do texto para branco
                  ),
                ),
                subtitle: Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: act['tags']
                      .map<Widget>((tag) => Chip(
                            label: Text(
                              "#$tag",
                              style: TextStyle(color: Color(0xFF212121)), // Texto preto no chip
                            ),
                            backgroundColor: Color(0xFFFAFAFA),
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