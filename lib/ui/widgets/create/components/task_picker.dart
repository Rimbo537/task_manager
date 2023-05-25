import 'package:flutter/material.dart';
import 'package:task_manager/domain/models/data_model.dart';
import 'package:task_manager/ui/widgets/components/type_of_task.dart';

class TaskPicker extends StatefulWidget {
  final TaskModel? model;

  const TaskPicker({super.key, required this.model});

  @override
  State<TaskPicker> createState() => _TaskPickerState();
}

class _TaskPickerState extends State<TaskPicker> {
  bool isSelectedWorkTasks = false;
  bool isSelectedPersonalTasks = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TypeOfTaskWidget(
          text: 'Робочі',
          onTap: () {
            setState(() {
              isSelectedWorkTasks = !isSelectedWorkTasks;
              isSelectedPersonalTasks = !isSelectedPersonalTasks;
            });
          },
          isSelected: widget.model?.type == 1
              ? isSelectedWorkTasks
              : !isSelectedWorkTasks,
        ),
        TypeOfTaskWidget(
          text: 'Особисті',
          onTap: () {
            setState(() {
              isSelectedPersonalTasks = !isSelectedPersonalTasks;
              isSelectedWorkTasks = !isSelectedWorkTasks;
            });
          },
          isSelected: widget.model?.type == 2
              ? isSelectedPersonalTasks
              : !isSelectedPersonalTasks,
        ),
      ],
    );
  }
}
