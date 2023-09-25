import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Lista(),
  ));
}

class Lista extends StatefulWidget {
  const Lista({Key? key});

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  List<String> frutas = [
    "Maçã",
    "Banana",
    "Laranja",
    "Pera",
    "Jabuticaba",
    "Romã",
    "Melão",
    "Mamão",
    "Manga"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Exibição de uma Lista")),
        backgroundColor: const Color.fromARGB(255, 158, 147, 99),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            const Text(
              "Lista de frutas",
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight
                    .bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: frutas.length,
                itemBuilder: (context, index) {
                  final indice = (index + 1)
                      .toString(); // Convertendo o índice de int para string
                  return ListTile(
                    title: Text("$indice - ${frutas[index]}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
