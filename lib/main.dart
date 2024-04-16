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
        body: CustomScrollView(
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
          ],
        ),
      ),
    );
  }
}
