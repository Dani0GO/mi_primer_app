import 'package:flutter/material.dart';
import '../models/receta.dart';

class DetalleRecetaScreen extends StatelessWidget {
  final Receta receta; // Exigimos la receta entera por constructor

  const DetalleRecetaScreen({super.key, required this.receta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // CustomScrollView permite efectos avanzados de scroll como el SliverAppBar
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(receta.nombre, style: const TextStyle(fontWeight: FontWeight.bold, backgroundColor: Colors.black45)),
              background: Image.network(receta.imagen, fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('INGREDIENTES', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 2)),
                  const Divider(thickness: 2),
                  const SizedBox(height: 10),
                  // Mapeamos la lista de Strings a una lista de Widgets Text
                  ...receta.ingredientes.map((ingrediente) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            const Icon(Icons.check_circle_outline, size: 20, color: Colors.grey),
                            const SizedBox(width: 10),
                            Expanded(child: Text(ingrediente, style: const TextStyle(fontSize: 16))),
                          ],
                        ),
                      )),

                  const SizedBox(height: 40),

                  const Text('PROCEDIMIENTO', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 2)),
                  const Divider(thickness: 2),
                  const SizedBox(height: 10),
                  // Usamos .asMap() para obtener el índice y numerar los pasos
                  ...receta.pasos.asMap().entries.map((entrada) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${entrada.key + 1}. ', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            Expanded(child: Text(entrada.value, style: const TextStyle(fontSize: 16, height: 1.5))),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
