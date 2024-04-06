import 'package:flutter/material.dart';
import 'package:flutter_tasks/constants/constants.dart';
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
      maxLength: 25,
      maxLines: 1,
      decoration: const InputDecoration(
        labelText: 'Titulo *',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: TextStyle(
          color: AppColors.textPrimaryColor,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),
      ),
      validator: (value){
        if(value == null || value.isEmpty){
          return 'El título no puede estar vacio';
        }
         return null;
      },
      onChanged: (value) {
        context.read<FormProvider>().taskData.title = value;
      },
    );
  }
}