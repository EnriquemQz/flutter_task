import 'package:flutter/material.dart';
import 'package:flutter_tasks/providers/providers.dart';
import 'package:provider/provider.dart';

class CommentsFormWidget extends StatelessWidget {
  const CommentsFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: TextFormField(
        initialValue: context.read<FormProvider>().taskData.comments,
        maxLength: 80,
        maxLines: null,
        decoration: const InputDecoration(
          hintText: 'Comentarios de la tarea',
          labelText: 'Comentarios (Opcional)',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          )
        ),
        onChanged: (value) {
        context.read<FormProvider>().taskData.comments = value;
      },
      ),
    );
  }
}