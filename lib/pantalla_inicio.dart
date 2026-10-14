import 'package:flutter/material.dart';
import 'package:mi_primer_app/unidad1/anatomia_scaffold/pantalla_principal.dart';
import 'package:mi_primer_app/unidad1/anatomia_flutter/app_prueba.dart';
import 'package:mi_primer_app/unidad2/p2_tarjeta_perfil/pantalla_perfil.dart';
import 'package:mi_primer_app/unidad2/p3_anatomia_espacial/pantalla_dimensiones.dart';
import 'package:mi_primer_app/unidad2/p4_solucion_overflow/solucion_overflow.dart';
import 'package:mi_primer_app/unidad2/p5_formulario/formulario.dart';
import 'package:mi_primer_app/unidad2/p7_json_lista/pantalla_lista.dart';
import 'package:mi_primer_app/unidad3/p3_widget_personalizado/pantalla_perfil_tarjetas.dart';
import 'package:mi_primer_app/unidad3/p4_comunicacion_bidireccional/dashboard_contador_screen.dart';
import 'package:mi_primer_app/unidad3/p4_comunicacion_bidireccional/pantalla_zonas_contador.dart';
import 'package:mi_primer_app/unidad3/p5_estado_listas/screens/feed_screen.dart';
import 'package:mi_primer_app/unidad3/p5_json_futurebuilder/screens/home_screen.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  void _abrir(BuildContext context, Widget pantalla) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => pantalla),
    );
  }

  Widget _titulo(String texto) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
        ),
      ),
    );
  }

  Widget _opcion(BuildContext context, String texto, Widget pantalla) {
    return ListTile(
      leading: const Icon(Icons.chevron_right, color: Colors.indigo),
      title: Text(texto),
      onTap: () => _abrir(context, pantalla),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Prácticas'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _titulo('Unidad I'),
          _opcion(context, 'Anatomía del Scaffold', const PantallaPrincipal()),
          _opcion(context, 'Anatomía de Flutter', const Prueba()),
          _titulo('Unidad II'),
          _opcion(context, 'P2 Tarjeta de Perfil', const PantallaPerfil()),
          _opcion(context, 'P3 Anatomía Espacial', const PantallaDimensiones()),
          _opcion(context, 'P4 Solución Overflow', const SolucionOverflow()),
          _opcion(context, 'P5 Formulario Interactivo', const FormularioScreen()),
          _opcion(context, 'P7 Consumo de JSON en una Lista', const PantallaLista()),
          _titulo('Unidad III'),
          _opcion(context, 'P3 Widget Personalizado', const PantallaPerfilTarjetas()),
          _opcion(context, 'P4 Comunicación Bidireccional - Contador', const DashboardContadorScreen()),
          _opcion(context, 'P4 Contador por Zonas', const PantallaZonasContador()),
          _opcion(context, 'P5 Estado en Listas (FlutterGram)', const FeedScreen()),
          _opcion(context, 'P5 Carga de JSON Local (FutureBuilder)', const HomeScreen()),
        ],
      ),
    );
  }
}
