class Receta {
  final int id;
  final String nombre;
  final String imagen;
  final String tiempo;
  final List<String> ingredientes;
  final List<String> pasos;

  Receta({
    required this.id,
    required this.nombre,
    required this.imagen,
    required this.tiempo,
    required this.ingredientes,
    required this.pasos,
  });

  // Constructor Factory: Transforma el diccionario JSON en un Objeto Dart
  factory Receta.fromJson(Map<String, dynamic> json) {
    return Receta(
      id: json['id'],
      nombre: json['nombre'],
      imagen: json['imagen'],
      tiempo: json['tiempo'],
      // Casteo seguro de listas dinámicas a listas de Strings
      ingredientes: List<String>.from(json['ingredientes']),
      pasos: List<String>.from(json['pasos']),
    );
  }
}
