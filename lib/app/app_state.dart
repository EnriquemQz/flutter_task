import 'package:flutter/material.dart';
import 'package:flutter_tasks/providers/api_privider.dart';
import 'package:provider/provider.dart';

import 'app.dart';

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ApiProvider())
      ],
      child: const MyApp(),
    );
  }
}