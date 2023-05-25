import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/domain/cubit/data_cubit/data_cubit.dart';
import 'package:task_manager/ui/widgets/log_in/log_in_widget.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DataCubit>(
      create: (context) => DataCubit(),
      child: const LogInWidget(),
    );
  }
}
