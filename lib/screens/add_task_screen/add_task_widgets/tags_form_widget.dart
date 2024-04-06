import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/providers.dart';

class TagsFormWidget extends StatelessWidget {
  const TagsFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: TextFormField(
        initialValue: '',
        decoration: const InputDecoration(
          labelText: 'Etiqueta (Opcional)',
          hintText: 'Ejemplo: Hogar',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          )
        ),
        onChanged: (value) {
        context.read<FormProvider>().taskData.tags = value;
      },
      ),
    );
  }
}