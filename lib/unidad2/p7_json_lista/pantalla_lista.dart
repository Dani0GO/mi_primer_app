import 'package:flutter/material.dart';
import 'package:mi_primer_app/unidad2/p7_json_lista/materia.dart';
import 'package:mi_primer_app/unidad2/p7_json_lista/materia_service.dart';
import 'package:mi_primer_app/unidad2/p7_json_lista/pantalla_detalle.dart';

class PantallaLista extends StatefulWidget {
  const PantallaLista({super.key});

  @override
  State<PantallaLista> createState() => _PantallaListaState();
}

class _PantallaListaState extends State<PantallaLista> {
  List<Materia> materias = [];

  @override
  void initState() {
    super.initState();
    cargarMaterias();
  }

  void cargarMaterias() async {
    final lista = await MateriaService().obtenerMaterias();
    setState(() => materias = lista);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mis Materias')),
      body: materias.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: materias.length,
              itemBuilder: (context, i) {
                final materia = materias[i];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: ListTile(
                    leading: const Icon(Icons.book, color: Colors.indigo),
                    title: Text(materia.nombre),
                    subtitle: Text('${materia.creditos} créditos'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PantallaDetalle(materia: materia),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}