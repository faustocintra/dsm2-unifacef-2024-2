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
                leading: CircleAvatar(child: Text("${act['day']}")),
                //Junto ao titúlo, é adicionado uma const textStyle para modificarmos o estilo do texto, adicionando tamanho e peso da fonte
                title: Text(act['name'],
                    style: const TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold)),
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(
                            // Widget Chip
                            label: Text("#$tag"),
                            //Adicionando uma cor do Material com cor de fundo do widget Chip
                            backgroundColor: Colors.deepPurple))
                        .toList()));
          }).toList());
        });
  }
}
