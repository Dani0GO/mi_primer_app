import 'package:flutter/material.dart';
import 'package:mi_primer_app/unidad3/p4_comunicacion_bidireccional/display_resultado.dart';
import 'package:mi_primer_app/unidad3/p4_comunicacion_bidireccional/boton_control.dart';

class PantallaZonasContador extends StatefulWidget {
  const PantallaZonasContador({super.key});

  @override
  State<PantallaZonasContador> createState() => _PantallaZonasContadorState();
}

class _PantallaZonasContadorState extends State<PantallaZonasContador> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    setState(() {
      if (_contador > 0) _contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador por Zonas'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.deepPurple,
            child: Center(
              child: DisplayResultado(contador: _contador),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotonControl(
                  icono: Icons.remove,
                  onPressed: _decrementar,
                ),
                const SizedBox(width: 16),
                BotonControl(
                  icono: Icons.add,
                  onPressed: _incrementar,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
