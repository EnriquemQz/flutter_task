import 'package:flutter/material.dart';

class DataDetailWidget extends StatelessWidget {
  final String data;
  final String title;
  const DataDetailWidget({super.key, required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0
        ),
      ),
      subtitle: Text(data),
    );
  }
}