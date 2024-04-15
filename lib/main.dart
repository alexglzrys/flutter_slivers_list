import 'package:flutter/material.dart';
import 'package:sliver_list_flutter_app/widgets/accreditation_list.dart';
//import 'package:sliver_list_flutter_app/widgets/header.dart';

void main() => runApp(const SliverListApp());

class SliverListApp extends StatelessWidget {
  const SliverListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sliver List App',
      home: Scaffold(body: AccreditationList()),
    );
  }
}
