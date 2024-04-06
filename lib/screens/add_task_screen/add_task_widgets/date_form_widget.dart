import 'package:flutter/material.dart';
import 'package:flutter_tasks/providers/providers.dart';
import 'package:provider/provider.dart';

class DateFormWidget extends StatelessWidget {
  const DateFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedDate = context.watch<FormProvider>().taskData;
    final TextEditingController controller = TextEditingController(
      text: selectedDate.dueDate.toString().substring(0, 10),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: TextFormField(
        controller: controller,
        // initialValue: selectedDate.dueDate.toString().substring(0, 10),
        readOnly: true,
        decoration: const InputDecoration(
          labelText: 'Selecciona una Fecha (Opcional)',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          )
        ),
        onTap: () async {
          await showDatePicker(
            context: context, 
            initialDate: DateTime.now(),
            firstDate: DateTime.now(), 
            lastDate: DateTime(2100)
          ).then((value) {
            context.read<FormProvider>().selectedDate = value!;
            print(selectedDate.dueDate);
          });
        },
      ),
    );
  }
}