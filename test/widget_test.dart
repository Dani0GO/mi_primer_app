import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mi_primer_app/pantalla_inicio.dart';

void main() {
  testWidgets('El menú de inicio muestra las unidades', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: PantallaInicio()));

    expect(find.text('Mis Prácticas'), findsOneWidget);
    expect(find.text('Unidad I'), findsOneWidget);
  });
}
