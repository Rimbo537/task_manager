import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/widgets/create/components/custom_text_field.dart';
import 'package:task_manager/ui/widgets/create/create_widget.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          elevation: 0,
          title: const CustomTextField(
            hintText: 'Назва завдання...',
            fontSize: 24,
            maxLength: 90,
          ),
        ),
        body: const CreateWidget(),
      ),
    );
  }
}
