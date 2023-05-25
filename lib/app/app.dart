import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/domain/cubit/data_cubit/data_cubit.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/screens/log_in/log_in.dart';
import 'package:task_manager/ui/widgets/components/bg_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DataCubit(),
      child: MaterialApp(
        title: 'Task Manager',
        theme: ThemeData(primarySwatch: AppColors.customColor),
        home: BackgroundWidget(
          child:
              // CreateScreen(),
              // MainScreen(),
              LogInScreen(),
        ),
      ),
    );
  }
}
