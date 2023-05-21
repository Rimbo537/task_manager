import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/components/type_of_task.dart';

class TaskPicker extends StatefulWidget {
  const TaskPicker({super.key});

  @override
  State<TaskPicker> createState() => _TaskPickerState();
}

class _TaskPickerState extends State<TaskPicker> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TypeOfTaskWidget(
          text: 'Робочі',
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          isSelected: isSelected,
        ),
        TypeOfTaskWidget(
          text: 'Особисті',
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          isSelected: isSelected,
        ),
      ],
    );
  }
}
