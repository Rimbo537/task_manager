import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/widgets/main/components/app_bar/custom_app_bar.dart';
import 'package:task_manager/ui/widgets/main/main.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        title: const CustomAppBar(),
      ),
      body: const MainWidget(),
    );
  }
}
