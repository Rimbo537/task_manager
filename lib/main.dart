import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/screens/create/create.dart';
import 'package:task_manager/ui/screens/log_in/log_in.dart';
import 'package:task_manager/ui/screens/main/main.dart';
import 'package:task_manager/ui/widgets/components/bg_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const customColor = MaterialColor(0xFFFFD600, {
      50: AppColors.primaryVariant,
      100: AppColors.primaryVariant,
      200: AppColors.primaryVariant,
      300: AppColors.primaryVariant,
      400: AppColors.primaryVariant,
      500: AppColors.primaryVariant,
      600: AppColors.primaryVariant,
      700: AppColors.primaryVariant,
      800: AppColors.primaryVariant,
      900: AppColors.primaryVariant,
    });
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(primarySwatch: customColor),
      home: const BackgroundWidget(
        child: 
        CreateScreen(),
        //  MainScreen(),
        // LogInScreen(),
      ),
    );
  }
}
