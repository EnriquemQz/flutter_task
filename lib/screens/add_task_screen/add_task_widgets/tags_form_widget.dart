import 'package:flutter/material.dart';
import 'package:flutter_tasks/constants/constants.dart';
import 'package:provider/provider.dart';

import '../../../providers/providers.dart';

class TagsFormWidget extends StatelessWidget {
  const TagsFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = context.read<FormProvider>().taskData.tags;
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: TextFormField(
        initialValue: prov == 'sin etiqueta' ? null : prov,
        decoration: const InputDecoration(
          labelText: 'Etiqueta (Opcional)',
          hintText: 'Ejemplo: Hogar',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
            color: AppColors.textPrimaryColor,
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