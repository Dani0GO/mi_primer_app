import 'package:flutter/material.dart';

class TarjetaDato extends StatelessWidget {
  final String titulo;
  final String valor;
  final Color color;

  const TarjetaDato({
    super.key,
    required this.titulo,
    required this.valor,
    this.color = Colors.white,
  });

  const TarjetaDato.destacada({
    super.key,
    required this.titulo,
    required this.valor,
  }) : color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(titulo),
        subtitle: Text(
          valor,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
