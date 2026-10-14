import 'package:flutter/material.dart';
import 'package:mi_primer_app/unidad2/p5_formulario/pantalla_resultado_formulario.dart';

class FormularioScreen extends StatefulWidget {
  const FormularioScreen({super.key});

  @override
  State<FormularioScreen> createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _carreraController = TextEditingController();
  @override
  void dispose() {
    _nombreController.dispose();
    _carreraController.dispose();
    super.dispose();
  }

 void _enviarDatos() {
  String textoIngresado = _nombreController.text.trim();
  String carreraIngresada = _carreraController.text.trim();

  if (textoIngresado.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Por favor, escribe un nombre válido.')),
    );
    return;
  }

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PantallaResultadoFormulario(
        nombreUsuario: textoIngresado,
        carrera: carreraIngresada,
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nombreController,
              decoration: const InputDecoration(
               labelText: 'Ingresa tu nombre o ID',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
               TextField(
                 controller: _carreraController,
              decoration: const InputDecoration(
               labelText: 'Ingresa tu carrera',
                 border: OutlineInputBorder(),
                 prefixIcon: Icon(Icons.school),
              ),
            ),
   const SizedBox(height: 20),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _enviarDatos,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'Enviar a Pantalla B',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}