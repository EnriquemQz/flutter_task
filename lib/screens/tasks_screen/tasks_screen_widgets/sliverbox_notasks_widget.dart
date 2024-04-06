import 'package:flutter/material.dart';

class SliverboxNoTasksWidget extends StatelessWidget {
  const SliverboxNoTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Center(
        child: SizedBox(
          child: Text('No hay Tareas'),
        ),
      ),
    );
  }
}