import 'package:flutter/material.dart';
import 'package:sliver_list_flutter_app/widgets/accreditation_item.dart';

// Widget que representa un listado de elementos
class AccreditationList extends StatelessWidget {
  const AccreditationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) => const AccreditationItem(),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
        itemCount: 10);
  }
}
