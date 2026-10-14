import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:mi_primer_app/unidad2/p7_json_lista/materia.dart';

class MateriaService {
  Future<List<Materia>> obtenerMaterias() async {
    String texto = await rootBundle.loadString('lib/unidad2/p7_json_lista/materias.json');
    var json = jsonDecode(texto);
    return (json['materias'] as List).map((m) => Materia.fromJson(m)).toList();
  }
}
