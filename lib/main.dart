import 'package:flutter/material.dart';
import 'package:sliver_list_flutter_app/widgets/accreditation_list.dart';
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
            SliverAppBar(
              title: const Text('Acreditaciones'),
              backgroundColor: Colors.pink[600],
              floating: true,
              centerTitle: true,
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
