import 'package:flutter/material.dart';
import 'package:sliver_list_flutter_app/widgets/accreditation_list.dart';
import 'package:sliver_list_flutter_app/widgets/header.dart';
// import 'package:sliver_list_flutter_app/widgets/header.dart';
//import 'package:sliver_list_flutter_app/widgets/header.dart';

void main() => runApp(const SliverListApp());

class SliverListApp extends StatelessWidget {
  const SliverListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sliver List App',
      home: Scaffold(
        //body: AccreditationList()
        // body: Header(),
        body: Stack(children: [
          // Un CustomScrollView en Flutter utiliza slivers para definir su contenido desplazable
          CustomScrollView(
            // Los Slivers nos permiten agrega desplazamientos elegantes en nuestra aplicación
            // Una sliver es una porción de un área de desplazamiento que se puede definir para que se comporte de una manera especial que nos ayude a conseguir efectos de scroll personalizados
            // Permite declarar elementos pegajosos o elásticos que se ocultan o se muestran a medida que hacemos scroll.

            // Los Slivers se utilizan comúnmente dentro de un CustomScrollView para construir interfaces de usuario complejas que requieren diferentes tipos de contenido desplazable en una sola pantalla.
            slivers: [
              // ? Un SliverPersistentHeader es un widget que se utiliza para crear encabezados personalizados que permanecen visibles en la parte superior de una lista desplazable, como un CustomScrollView, incluso cuando el contenido de la lista se desplaza.
              SliverPersistentHeader(
                // * SliverPersistentHeader requiere de una instancia de SliverPersistentHeaderDelegate, el cual es el encargado de construir el contenido del encabezado. Este requiere información sobre alturas máximas y mínimas, así como el contenido a proyectar
                delegate: SliverCustomHeaderDelegate(
                  minHeight: 120,
                  maxHeight: 250,
                  child: const Header(),
                ),
                // Mostrarse nuevamente en la parte superior cuando se haga scroll hacia arriba
                // floating: true,
                // Mantenerse fijo (con la altura mínima) en la parte superior de la pantalla cuando se hace scroll
                pinned: true,
              ),
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: AccreditationList(),
              ),
              // SliverToBoxAdapter permite incluir widgets no desplazables dentro de un CustomScrollView o cualquier otro ScrollView que acepte slivers.
              const SliverToBoxAdapter(
                child: SizedBox(height: 60),
              )
            ],
          ),
          const _FloatingButton()
        ]),
      ),
    );
  }
}

// Widget que representa un botón flotante en la parte inferior de la pantalla
// Se pudo haber resuelto con FloatinActionButton, pero este toma en cuenta áreas seguras y no dejaba colocar el elemento pegado a la zona inferior derecha
class _FloatingButton extends StatelessWidget {
  const _FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      right: 0,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: const Color(0xffDA017B),
            foregroundColor: const Color(0xff33A9DD),
            // El ancho del botón será del 70% del ancho de la pantalla
            minimumSize: Size(mediaQuery.width * .7, 60),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
              ),
            )
            // side: BorderSide(width: 1, color: Colors.black),
            ),
        child: const Text(
          'Nueva acreditación',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
