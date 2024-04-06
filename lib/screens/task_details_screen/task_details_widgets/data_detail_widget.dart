import 'package:flutter/material.dart';
import 'package:flutter_tasks/constants/constants.dart';

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
      subtitle: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primaryColor
          ),
          borderRadius: BorderRadius.circular(18.0)
        ),
        child: Text(
          data,
          style: const TextStyle(
            fontSize: 16.0
          ),
        )
      ),
    );
  }
}