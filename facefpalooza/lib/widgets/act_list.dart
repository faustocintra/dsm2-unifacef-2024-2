import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //     itemCount: data.length,
    //     itemBuilder: (context, index) {
    //       final item = data[index];
    //       return ListTile(
    //           leading: CircleAvatar(child: Text("${item.day}")),
    //           title: Text(item.name),
    //           subtitle: Wrap(
    //               spacing: 8,
    //               runSpacing: 4,
    //               children: item.tags
    //                   .map((tag) => Chip(label: Text("#$tag")))
    //                   .toList()));
    //     });
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('acts').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var list = snapshot.data?.docs ?? [];

          return ListView(
              children: list.map<Widget>((act) {
            return ListTile(
                leading: CircleAvatar(child: Text("${act['day']}")),
                title: Text(act['name']),
                subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(label: Text("#$tag")))
                        .toList()));
          }).toList());
        });
  }
}
