import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/acts.dart';

// Declaração de um widget sem estado (StatelessWidget) chamado ActList.
class ActList extends StatelessWidget {
  const ActList(
      {super.key}); // Construtor da classe, usando o super.key para rastrear alterações no widget.

  final data =
      lineup; // Dados locais estáticos importados do arquivo 'acts.dart'.

  @override
  Widget build(BuildContext context) {
    // Constrói a interface do widget.
    return StreamBuilder(
        // Conecta-se ao Firestore e escuta alterações em tempo real na coleção 'acts'.
        stream: FirebaseFirestore.instance
            .collection('acts') // Acessa a coleção 'acts' no Firestore.
            .orderBy('day') // Ordena os documentos por 'day'
            .orderBy('relevance') //ordena por 'relevance'.
            .snapshots(), // Obtém um fluxo contínuo (stream) dos dados ordenados.

        // Define como a interface será construída com base nos dados do Firestore.
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            // Exibe um indicador de carregamento enquanto os dados não estão disponíveis.
            return const Center(child: CircularProgressIndicator());
          }

          // Armazena os documentos retornados pelo Firestore em uma lista.
          var list = snapshot.data?.docs ?? [];

          // Retorna uma ListView para exibir os dados dinamicamente.
          return ListView(
              // Mapeia cada documento (act) para criar widgets individuais.
              children: list.map<Widget>((act) {
            return ListTile(
                // Avatar circular que exibe o valor do campo 'day' do documento.
                leading: CircleAvatar(child: Text("${act['day']}")),

                // Título do ListTile
                title: Text(act['name'],
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold)),

                // Subtítulo do ListTile, exibindo os 'tags' como chips.
                subtitle: Wrap(
                    spacing: 8, // Espaçamento horizontal entre os chips.
                    runSpacing:
                        4, // Espaçamento vertical entre as linhas de chips.
                    // Mapeia a lista de tags para criar um Chip para cada tag.
                    children: act['tags']
                        .map<Widget>((tag) => Chip(
                            label: Text("#$tag"),
                            backgroundColor: Colors.lightBlue))
                        .toList()));
          }).toList()); // Converte a lista mapeada para um formato que o ListView aceita.
        });
  }
}
