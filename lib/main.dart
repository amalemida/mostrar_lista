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
List<String> frutas = ["maça", "banana"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exibição de uma Lista"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            const Text("Lista"),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: frutas.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(frutas[index]),
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
