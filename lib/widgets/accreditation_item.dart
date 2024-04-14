import 'package:flutter/material.dart';

// Widget que representa un elemento de una lista
class AccreditationItem extends StatelessWidget {
  const AccreditationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Colors.red, Colors.amber]),
        borderRadius: BorderRadius.circular(10),
      ),
      // El item cuneta con información y in icono posicionado de forma absoluta
      child: Stack(children: [
        // Icono poscionado de forma absoluta con opacidad
        Positioned(
          right: -20,
          top: -20,
          child: Icon(
            Icons.compost,
            color: Colors.white.withOpacity(0.5),
            size: 100,
          ),
        ),
        // Información del elemento
        const _InfoItem(),
      ]),
    );
  }
}

// Widget que agrupa la información o textos a mostrar sobre el elemento de una lista
class _InfoItem extends StatelessWidget {
  const _InfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Row(children: [
        Icon(
          Icons.public_sharp,
          color: Colors.white,
          size: 35,
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Acreditación',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 5),
            Text(
              'Tienda: Palacio de Hierro',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            Text(
              '20 de Enero de 2024',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
      ]),
    );
  }
}
