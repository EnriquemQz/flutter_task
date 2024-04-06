import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tasks/providers/providers.dart';

import 'app.dart';

// Separamos el código para una interfaz mas limpia 
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