import 'package:flutter/material.dart';

class SolucionOverflow extends StatelessWidget {
  const SolucionOverflow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solución de Overflow'),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _zona('Zona 1: 300px', Colors.blue.shade600, Colors.white),
            _zona('Zona 2: 300px', const Color(0xFFD9A954), Colors.black87),
            _zona('Zona 3: 300px', Colors.red.shade400, Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _zona(String texto, Color color, Color textColor) {
    return Container(
      height: 300,
      width: double.infinity,
      color: color,
      alignment: Alignment.center,
      child: Text(
        texto,
        style: TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}