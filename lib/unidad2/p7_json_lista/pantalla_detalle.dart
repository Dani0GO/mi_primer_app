import 'package:flutter/material.dart';
import 'package:mi_primer_app/unidad2/p7_json_lista/materia.dart';

class PantallaDetalle extends StatelessWidget {
  final Materia materia;

  const PantallaDetalle({super.key, required this.materia});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(materia.nombre)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.menu_book, size: 60, color: Colors.indigo),
            const SizedBox(height: 16),
            Text(materia.nombre, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text('Docente: ${materia.docente}'),
            Text('Créditos: ${materia.creditos}'),
            const SizedBox(height: 20),
            Text(materia.descripcion),
          ],
        ),
      ),
    );
  }
}