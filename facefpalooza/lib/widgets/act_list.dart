import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ActList extends StatelessWidget {
  const ActList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('bands') // Nome da coleção no Firebase
          .orderBy('day') // Ordena por dia
          .orderBy('relevance', descending: true) // Ordena por relevância
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Erro ao carregar dados.'));
        }
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        final data = snapshot.data!.docs;
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final band = data[index].data() as Map<String, dynamic>;
            return ListTile(
              title: Text(
                band['name'], // Nome da banda
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Fonte maior e negrito
              ),
              subtitle: Text('Dia: ${band['day']}'),
            );
          },
        );
      },
    );
  }
}
