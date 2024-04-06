import 'package:flutter/material.dart';
import 'package:flutter_tasks/models/models.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tasks/providers/providers.dart';

class TitleFormWidget extends StatelessWidget {
  // final TaskDetailModel modelDetail;
  const TitleFormWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    // var mymodel = TaskDetailModel();

    return TextFormField(
      initialValue: context.read<FormProvider>().taskData.title,
      // initialValue: mymodel?.title ?? '',
      decoration: const InputDecoration(
        labelText: 'Titulo *',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),
      ),
      onChanged: (value) {
        context.read<FormProvider>().taskData.title = value;
      },
    );
  }
}