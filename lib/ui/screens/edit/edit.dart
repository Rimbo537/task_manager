import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/widgets/components/bg_widget.dart';
import 'package:task_manager/ui/widgets/edit/components/app_bar.dart';
import 'package:task_manager/ui/widgets/edit/edit_widget.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

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
            title: const EditAppBarWidget(),
          ),
          body: EditWidget(
            textButton: 'Видалити',
            onPressed: () {},
            colorButton: AppColors.accentRed,
          ),
        ),
      ),
    );
  }
}
