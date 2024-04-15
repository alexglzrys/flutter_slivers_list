import 'package:flutter/material.dart';

// Widget que representa un elemento de una lista
class AccreditationItem extends StatelessWidget {
  const AccreditationItem(
      {super.key,
      required this.store,
      required this.colors,
      required this.icon,
      required this.date});
  // Propiedades requeridas en este widget para mostrar la información referente a una acreditación
  final String store;
  final List<String> colors;
  final IconData icon;
  final String date;

  @override
  Widget build(BuildContext context) {
    // Retirar el # del color hexadecimal (formato hexadecimal puro)
    // Convertir a un color hexadecil con formato válido para Dart (0xff)
    Color primaryColor = Color(int.parse('0xff${colors[0].substring(1)}'));
    Color secondaryColor = Color(int.parse('0xff${colors[1].substring(1)}'));

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [primaryColor, secondaryColor]),
        borderRadius: BorderRadius.circular(10),
      ),
      // El item cuneta con información y in icono posicionado de forma absoluta
      child: Stack(children: [
        // Icono poscionado de forma absoluta con opacidad
        Positioned(
          right: -20,
          top: -20,
          child: Icon(
            icon,
            color: Colors.white.withOpacity(0.5),
            size: 100,
          ),
        ),
        // Información a mostrar sobre la tarjeta
        _InfoItem(store, icon, date),
      ]),
    );
  }
}

// Widget que agrupa la información o textos a mostrar sobre el elemento de una lista
class _InfoItem extends StatelessWidget {
  const _InfoItem(this.store, this.icon, this.date);

  // Propiedades posicionales necesarias en este widget para mostrar la información referente a la acreditación
  final String store;
  final IconData icon;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(children: [
        Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Acreditación',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(
              'Tienda: $store',
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
            Text(
              date,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
      ]),
    );
  }
}
