import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tasks/providers/providers.dart';

import 'app.dart';

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ApiProvider()),
        ChangeNotifierProvider(create: (_) => FormProvider())
      ],
      child: const MyApp(),
    );
  }
}