import 'package:flutter/material.dart';

class SliverboxNoTasksWidget extends StatelessWidget {
  const SliverboxNoTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Center(
        child: Container(
          height: size.height / 2.5,
          width: size.width / 1.2,
          child: const Center(
            child: Text(
              'No hay Tareas Puedes Agregar pulsando en el boton +',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0
              ),
              textAlign: TextAlign.center,
            )
          ),
        ),
      ),
    );
  }
}