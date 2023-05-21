import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/widgets/create/components/custom_text_field.dart';

class EditAppBarWidget extends StatelessWidget {
  const EditAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            hintText: 'Назва завдання...',
            fontSize: 24,
            maxLength: 90,
            controller: nameController,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.done,
            size: 24,
            color: AppColors.primaryVariant,
          ),
        ),
      ],
    );
  }
}
