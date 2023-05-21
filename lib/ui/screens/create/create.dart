import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/widgets/components/bg_widget.dart';
import 'package:task_manager/ui/widgets/create/components/custom_text_field.dart';
import 'package:task_manager/ui/widgets/create/create_widget.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    return BackgroundWidget(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: AppBar(
            backgroundColor: AppColors.transparent,
            elevation: 0,
            title: CustomTextField(
              hintText: 'Назва завдання...',
              fontSize: 24,
              maxLength: 90,
              controller: nameController,
            ),
          ),
          body: CreateWidget(
            textButton: 'Створити',
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
