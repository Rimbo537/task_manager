import 'package:flutter/material.dart';
import 'package:task_manager/domain/models/data_model.dart';
import 'package:task_manager/ui/widgets/create/create_widget.dart';

class EditWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String textButton;
  final Color? colorButton;
  final TaskModel model;

  const EditWidget({
    super.key,
    required this.onPressed,
    required this.textButton,
    this.colorButton,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return CreateWidget(
      onPressed: onPressed,
      textButton: textButton,
      colorButton: colorButton,
      model: model,
    );
  }
}
