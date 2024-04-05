import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0.0,
      pinned: true,
      backgroundColor: Colors.green,
      expandedHeight: 90.0,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(25.0),
        title: Container(
          padding: const EdgeInsets.all(2.5),
          width: 120.0,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: BorderRadius.circular(8.0)
          ),
          child: const Text(
            'Mis Tareas',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.white,
              letterSpacing: 1.5
            ),
          ),
        ),
        // background: Image.network(
        //   'https://cdn.pixabay.com/photo/2021/03/28/13/02/lists-6131220_960_720.jpg',
        //   // 'https://cdn.pixabay.com/photo/2022/08/01/15/29/bulletin-board-7358409_1280.jpg',
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}