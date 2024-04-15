import 'package:flutter/material.dart';
import 'package:sliver_list_flutter_app/widgets/accreditation_item.dart';

// Widget que representa un listado de elementos
class AccreditationList extends StatelessWidget {
  AccreditationList({super.key});

  // Listado de acreditaciones
  final List accreditations = [
    {
      'colors': ['#DA017B', '#33A9DD'],
      'store': 'Palacio de Hierro',
      'icon': Icons.add_chart,
      'date': '20 de Enero de 2024'
    },
    {
      'colors': ['#C1D2F2', '#258DB4'],
      'store': 'Zara',
      'icon': Icons.add_moderator_outlined,
      'date': '29 de Enero de 2024'
    },
    {
      'colors': ['#F9177B', '#893049'],
      'store': 'Polo Sport',
      'icon': Icons.hail_rounded,
      'date': '08 de Febrero de 2024'
    },
    {
      'colors': ['#44A933', '#52B77A'],
      'store': 'Oggi Jeans',
      'icon': Icons.north_rounded,
      'date': '08 de Febrero de 2024'
    },
    {
      'colors': ['#FAB2CA', '#A53731'],
      'store': 'Buza.F',
      'icon': Icons.sports_handball_sharp,
      'date': '19 de Febrero de 2024'
    },
    {
      'colors': ['#D28C73', '#85F7E3'],
      'store': 'Shepora',
      'icon': Icons.movie,
      'date': '03 de Marzo de 2024'
    },
    {
      'colors': ['#F2FDB8', '#F70919'],
      'store': 'Cinemex',
      'icon': Icons.system_security_update_sharp,
      'date': '03 de Marzo de 2024'
    },
    {
      'colors': ['#1A3D03', '#8A9FB2'],
      'store': 'El Trompo',
      'icon': Icons.card_travel,
      'date': '17 de Marzo de 2024'
    },
    {
      'colors': ['#31E7DA', '#6712C4'],
      'store': 'Zara',
      'icon': Icons.flaky,
      'date': '17 de Marzo de 2024'
    },
    {
      'colors': ['#32818A', '#DC9D53'],
      'store': 'Dorian Michelle',
      'icon': Icons.leak_add_sharp,
      'date': '05 de Abril de 2024'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          // Recuperar la información de la acreditación actual
          final currentItem = accreditations[index];
          return AccreditationItem(
            store: currentItem['store'],
            colors: currentItem['colors'],
            icon: currentItem['icon'],
            date: currentItem['date'],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
        itemCount: accreditations.length);
  }
}
