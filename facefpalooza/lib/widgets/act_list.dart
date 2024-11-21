import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('acts').orderBy('day').orderBy('relevance').snapshots(), // O order by permite que ele ordene pelo day e pelo relevance 
         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? []; 
          
          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                trailing: CircleAvatar(child: Text("${act['day']}")), // Aqui com o Trailing ele alinha os circulos à direita
                title: Text(act['name'],  
                style: TextStyle(
                        fontSize: 20, // Aumenta o tamanho da fonte 
                        fontWeight: FontWeight.bold, // Faz a fonte ficar em negrito
                        )
                      ),
                
               
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(label: Text("#$tag"), backgroundColor: Colors.pink.shade200)) // Muda a cor do widget Chip na paleta de cores Material tom 200
                        .toList()));
          }).toList());
        });
  }
}