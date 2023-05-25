import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/domain/cubit/data_cubit/data_cubit.dart';
import 'package:task_manager/ui/screens/main/main.dart';
import 'package:task_manager/ui/widgets/components/custom_button.dart';

class LogInWidget extends StatelessWidget {
  const LogInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        text: 'Вхід',
        onPressed: () {
          context.read<DataCubit>().postData(
              // taskId: '354',
              // name: 'NameZH',
              // finishDate: '',
              // status: 1,
              // type: 1,
              // urgent: 0,
              // description: '',
              // file: '',
              );
          // context.read<DataCubit>().getDataData();

          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => MainScreen()),
              (Route<dynamic> route) => false);
        },
      ),
    );
  }
}
