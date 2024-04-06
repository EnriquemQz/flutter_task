import 'package:flutter/material.dart';
import 'package:flutter_tasks/constants/constants.dart';
import 'package:flutter_tasks/providers/form_provider.dart';
import 'package:provider/provider.dart';

class DescriptionFormWidget extends StatelessWidget {
  const DescriptionFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = context.read<FormProvider>().taskData.description;
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: TextFormField(
        initialValue: prov == 'sin descripción' ? null : prov,
        maxLength: 80,
        maxLines: null,
        decoration: const InputDecoration(
          hintText: 'Descripción de la tarea',
          labelText: 'Descripción (Opcional)',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
            color: AppColors.textPrimaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          )
        ),
        onChanged: (value) {
        context.read<FormProvider>().taskData.description = value;
      },
      ),
    );
  }
}