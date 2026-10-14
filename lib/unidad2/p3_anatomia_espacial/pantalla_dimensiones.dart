import 'package:flutter/material.dart';

class PantallaDimensiones extends StatelessWidget {
  const PantallaDimensiones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anatomía Espacial'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.deepPurple,
            child: const Center(
              child: Text(
                'ZONA 1 - Altura fija: 150 px',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  'ZONA 2 - Flexible (Expanded)\nOcupa todo el espacio sobrante',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.teal,
            child: const Center(
              child: Text(
                'ZONA 3 - Altura fija: 100 px',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
