import 'package:flutter/material.dart';
import 'package:mi_primer_app/unidad3/p4_comunicacion_bidireccional/display_resultado.dart';
import 'package:mi_primer_app/unidad3/p4_comunicacion_bidireccional/boton_control.dart';

class DashboardContadorScreen extends StatefulWidget {
  const DashboardContadorScreen({super.key});

  @override
  State<DashboardContadorScreen> createState() =>
      _DashboardContadorScreenState();
}

class _DashboardContadorScreenState extends State<DashboardContadorScreen> {
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
        title: const Text('Dashboard Contador'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'VALOR ACTUAL',
              style: TextStyle(fontSize: 14, letterSpacing: 2),
            ),
            const SizedBox(height: 16),
            DisplayResultado(contador: _contador),
            const SizedBox(height: 32),
            Row(
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
          ],
        ),
      ),
    );
  }
}
