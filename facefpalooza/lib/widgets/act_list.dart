import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('acts').orderBy('day').orderBy('relevance').snapshots(), // aqui eu coloquei o order by para classificar os meus atributos "day" e "relevance" na ordem crescente
         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? []; 
          
          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                trailing: CircleAvatar(child: Text("${act['day']}")), // troquei leading por trailing e ele passou os dias para o lado direito
                title: Text(act['name'],  
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), // negrito e tamanho 18
                
               
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(label: Text("#$tag"), backgroundColor: Colors.blue.shade200)) // widget Chip na paleta de cores Material tom 200
                        .toList()));
          }).toList());
        });
  }
}