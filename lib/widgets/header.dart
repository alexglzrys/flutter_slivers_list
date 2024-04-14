import 'package:flutter/material.dart';

// Widget que representa la cabecera de una sección
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
        // Imagen de Fondo
        image: DecorationImage(
          image: AssetImage('assets/images/banner.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      // Se aplicarán algunas capas con efectos gradientes, opacidades, y capas oscuras
      child: Stack(children: [
        // Capa con colores gradientes con opacidad (deja ver la imagen de fondo)
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red.withOpacity(0.5),
                Colors.amber.withOpacity(0.5),
              ],
            ),
          ),
        ),
        // Capa con filtro oscuro (permite mejorar la visualización de los textos que habra por encima de ella)
        Container(
          color: Colors.black.withOpacity(0.5),
        ),
        // Capa con información descriptiva
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Centro Comercial Siglo XXI',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 4),
              const Text(
                'Acreditaciones',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 2),
              Container(
                color: Colors.orange,
                width: 70,
                height: 2,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
