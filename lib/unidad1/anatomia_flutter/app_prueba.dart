import 'package:flutter/material.dart';

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anatomía de Flutter', 
          style: TextStyle(color: Color.fromARGB(255, 6, 13, 117), fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.star, color: Color.fromARGB(255, 65, 16, 145)),
            title: Text('Elemento 1', 
              style: TextStyle(color: Color.fromARGB(255, 36, 35, 122), fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Descripción del elemento 1'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.star, color: Color.fromARGB(255, 107, 24, 175)),
            title: Text('Elemento 2', 
              style: TextStyle(color: Color.fromARGB(255, 27, 11, 170), fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Descripción del elemento 2'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.star, color: Color.fromARGB(255, 108, 25, 185)),
            title: Text('Prueba 3', 
              style: TextStyle(color: Color.fromARGB(255, 15, 4, 112), fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Descripción de la prueba 3'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.star, color: Color.fromARGB(255, 97, 16, 173)),
            title: Text('Prueba 4', 
              style: TextStyle(color: Color.fromARGB(255, 11, 23, 128), fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Descripción de la prueba 4'),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}