import 'package:flutter/material.dart';
import 'package:flutter_tasks/constants/constants.dart';
import 'package:flutter_tasks/providers/providers.dart';
import 'package:provider/provider.dart';

class SaveButtonWidget extends StatelessWidget {
  final bool hasData;
  const SaveButtonWidget({super.key, required this.hasData});

  @override
  Widget build(BuildContext context) {
    final formKey = context.read<FormProvider>();
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: MaterialButton(
        child: Text(
          hasData ? 'Editar' : 'Guardar',
          style: const TextStyle(
            fontSize: 18.0,
            color: AppColors.textWhiteColor
          ),
        ),
        onPressed: (){
          if(!formKey.validateForm()) return;
          hasData
          ? context.read<ApiProvider>().editTask(
             context.read<FormProvider>().taskData.toJson(),
             context.read<FormProvider>().taskData.id.toString()
            )
          : context.read<ApiProvider>().postNewTask(
              context.read<FormProvider>().taskData.toJson()
            );
          Navigator.pop(context);
        }
      ),
    );
  }
}