import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/act.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acts App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[900],
        cardColor: Colors.grey[800],
        chipTheme: ChipThemeData(
          backgroundColor: Colors.grey[700]!,
          labelStyle: const TextStyle(color: Colors.white),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: const ActList(),
    );
  }
}

class ActList extends StatelessWidget {
  const ActList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acts List'),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('acts')
              .orderBy('day')
              .orderBy('relevance')
              .snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            var list = snapshot.data?.docs ?? [];

            return ListView(
                children: list.map<Widget>((act) {
              return Card(
                color: Theme.of(context).cardColor,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      "${act['day']}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text(
                    act['name'],
                    style: const TextStyle(
                      fontSize: 18, // Aumenta o tamanho da fonte
                      fontWeight: FontWeight.bold, // Define a fonte em negrito
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: act['tags']
                        .map<Widget>((tag) => Chip(label: Text("#$tag")))
                        .toList(),
                  ),
                ),
              );
            }).toList());
          }),
    );
  }
}