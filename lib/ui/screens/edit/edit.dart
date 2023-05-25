import 'package:flutter/material.dart';
import 'package:task_manager/domain/models/data_model.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/widgets/components/bg_widget.dart';
import 'package:task_manager/ui/widgets/edit/components/app_bar.dart';
import 'package:task_manager/ui/widgets/edit/edit_widget.dart';

class EditScreen extends StatelessWidget {
  final TaskModel model;
  const EditScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: AppBar(
            backgroundColor: AppColors.transparent,
            elevation: 0,
            title: EditAppBarWidget(
              model: model,
            ),
          ),
          body: EditWidget(
            textButton: 'Видалити',
            onPressed: () {},
            colorButton: AppColors.accentRed,
            model: model,
          ),
        ),
      ),
    );
  }
}
