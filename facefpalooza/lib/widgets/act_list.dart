import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder( //Builder 

        //Esse segmento do código importa os dados do banco de dados e os organiza baseado no dia e relevancia da banda.
        stream: FirebaseFirestore.instance.collection('acts').orderBy("day")
          .orderBy("relevance").orderBy("__name__").snapshots(), 
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];
          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(

                trailing: CircleAvatar(    //Ao mudar o termo de 'leading' para 'trailing', o componente 'day' é dislocado para a direita dos items da lista
                  backgroundColor: Colors.purple,
                  child: Text("${act['day']}")),
                
                //A linha abaixo modifica o nome das bandas em relação ao tamanho, estilo e se esta em negrito
                title: Text(act['name'],style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30,fontWeight: FontWeight.bold)),
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']    //Esse trecho configura os 'chips' de forma que fiquem com a cor ambar
                        .map<Widget>((tag) => Chip(
                           backgroundColor: Colors.amber,label: Text("#$tag")))  
                        .toList()));
          }).toList());
        });
  }
}
