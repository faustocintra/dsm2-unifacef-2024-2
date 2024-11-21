import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  @override
  Widget build(BuildContext context) {
    // Usamos o StreamBuilder para ouvir atualizações em tempo real do Firestore.
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('acts').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        // Caso haja um erro ao buscar os dados
        if (snapshot.hasError) {
          return Center(child: Text('Erro ao carregar os dados'));
        }

        // Enquanto os dados estão carregando, exibimos um indicador de progresso.
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        // Pegamos os documentos retornados pela consulta ao Firestore.
        var list = snapshot.data?.docs ?? [];

        // Criamos uma ListView com os documentos retornados.
        return ListView(
          children: list.map<Widget>((act) {
            // Acessando os campos corretamente
            var actData = act.data() as Map<String, dynamic>;
            return ListTile(
              // Exibe um círculo com o dia no lado direito.
              trailing: CircleAvatar(child: Text("${actData['day']}")),
              // Nome do "act".
              title: Text(actData['name'] ?? 'Sem nome'),
              // Exibe as tags como chips (pequenos blocos).
              subtitle: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: (actData['tags'] as List<dynamic>?)?.map<Widget>((tag) {
                  return Chip(label: Text("#$tag"));
                }).toList() ?? [],
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
