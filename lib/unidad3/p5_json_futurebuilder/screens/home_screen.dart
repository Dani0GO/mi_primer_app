import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/receta.dart';
import 'detalle_receta_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<List<Receta>> _cargarRecetas() async {
    final String respuesta = await rootBundle.loadString('lib/unidad3/p5_json_futurebuilder/data/data.json');
    final List<dynamic> datosDecodificados = jsonDecode(respuesta);
    return datosDecodificados.map((json) => Receta.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Recetario', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: FutureBuilder<List<Receta>>(
        future: _cargarRecetas(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Text('Error al cargar datos'));
          }

          final recetas = snapshot.data!;
          return ListView.builder(
            itemCount: recetas.length,
            itemBuilder: (context, index) {
              final receta = recetas[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(receta.imagen),
                    radius: 30,
                  ),
                  title: Text(receta.nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Tiempo: ${receta.tiempo}'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Navegamos a la vista de detalle pasando el OBJETO completo
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetalleRecetaScreen(receta: receta)),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
