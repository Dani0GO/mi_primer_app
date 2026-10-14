class Materia {
  final int id;
  final String nombre;
  final String docente;
  final int creditos;
  final String descripcion;

  const Materia({
    required this.id,
    required this.nombre,
    required this.docente,
    required this.creditos,
    required this.descripcion,
  });

  factory Materia.fromJson(Map<String, dynamic> json) {
    return Materia(
      id: json['id'],
      nombre: json['nombre'],
      docente: json['docente'],
      creditos: json['creditos'],
      descripcion: json['descripcion'],
    );
  }
}
