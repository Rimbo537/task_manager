import 'package:flutter/material.dart';
import 'package:task_manager/domain/models/data_model.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/widgets/create/components/custom_text_field.dart';

class EditAppBarWidget extends StatelessWidget {
  final TaskModel model;
  const EditAppBarWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController =
        TextEditingController(text: model.name);

    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            hintText: 'Назва завдання...',
            fontSize: 24,
            maxLength: 90,
            maxLines: 1,
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
