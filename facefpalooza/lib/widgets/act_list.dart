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
                  child: Icon(Icons.music_note), // Ícone ou qualquer outro elemento
                  foregroundColor: Color(0xFFFAFAFA),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Move a data para o lado direito
                  children: [
                    Text(
                      act['name'],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFAFAFA),
                      ),
                    ),
                    Text(
                      'Dia ${act['day']}', // Mostra a data à direita
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Ajuste a cor conforme necessário
                      ),
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
                              style: TextStyle(color: Color(0xFF212121)),
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