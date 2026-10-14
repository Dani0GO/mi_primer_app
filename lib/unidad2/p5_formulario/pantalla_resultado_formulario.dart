import 'package:flutter/material.dart';

class PantallaResultadoFormulario extends StatelessWidget {
  final String nombreUsuario;
  final String carrera;

  const PantallaResultadoFormulario({
    super.key,
    required this.nombreUsuario,
    required this.carrera,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla B')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, size: 80, color: Colors.indigo),
            const SizedBox(height: 16),
            Text(
              'Hola, $nombreUsuario',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Carrera: $carrera', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
