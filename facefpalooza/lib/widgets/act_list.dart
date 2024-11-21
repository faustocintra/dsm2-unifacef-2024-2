@override
Widget build(BuildContext context) {
  return StreamBuilder(
    // Criando um índice no Firebase com os campos 'day' e 'relevance' para ordenação
    stream: FirebaseFirestore.instance
      .collection('acts')
      .orderBy('day') // Ordena primeiro por 'day'
      .orderBy('relevance') // Em seguida, ordena por 'relevance'
      .orderBy('day') // Reaplica a ordenação por 'day'
      .orderBy('relevance', descending: true) // Finalmente, ordena 'relevance' de forma decrescente
      .snapshots(),
    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      if (!snapshot.hasData) {
        // Verifica se há dados disponíveis no snapshot
        return CircularProgressIndicator(); // Exibe um indicador de progresso enquanto carrega
      }

      List<DocumentSnapshot> list = snapshot.data.docs;
      // Cria uma lista de widgets ListTile para exibir os dados
      return ListView(
        children: list.map<Widget>((act) {
          return ListTile(
            leading: CircleAvatar(child: Text("${act['day']}")),
            // O elemento trailing é exibido do lado direito, diferente do elemento leading
            trailing: CircleAvatar(child: Text("${act['day']}")),
            title: Text(
              // Estilo do nome dos artistas
              act['name'],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            subtitle: Wrap(
              spacing: 8,
              runSpacing: 4,
              children: act['tags']
                .map<Widget>((tag) => Chip(
                  label: Text("#$tag"),
                  // Cor de fundo do widget Chip
                  backgroundColor: Colors.red.shade100,
                ))
                .toList(),
            ),
          );
        }).toList(),
      );
    },
  );
}
