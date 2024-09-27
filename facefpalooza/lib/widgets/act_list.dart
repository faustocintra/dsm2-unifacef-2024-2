import 'package:flutter/material.dart';
import '../data/act.dart';

class ActList extends StatelessWidget {
  const ActList({super.key});

  final data = lineup;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return ListTile(
              leading: CircleAvatar(child: Text("${item.day}")),
              title: Text(item.name),
              subtitle: Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: item.tags
                      .map((tag) => Chip(label: Text("#$tag")))
                      .toList()));
        });
  }
}