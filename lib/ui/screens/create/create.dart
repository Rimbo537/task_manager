import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/data/repository_impl/repository_impl.dart';
import 'package:task_manager/data/response/response.dart';
import 'package:task_manager/domain/cubit/data_cubit/data_cubit.dart';
import 'package:task_manager/domain/models/data_model.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/widgets/components/bg_widget.dart';
import 'package:task_manager/ui/widgets/create/components/custom_text_field.dart';
import 'package:task_manager/ui/widgets/create/create_widget.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    return BackgroundWidget(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: AppBar(
            backgroundColor: AppColors.transparent,
            elevation: 0,
            title: CustomTextField(
              hintText: 'Назва завдання...',
              fontSize: 24,
              maxLength: 90,
              maxLines: 1,
              controller: nameController,
            ),
          ),
          body: CreateWidget(
            textButton: 'Створити',
            onPressed: () {
              ReposImpl().postData(
                  model: TaskResponse(
                taskId: '12412354125',
                status: 1,
                name: 'SpiderMan',
                type: 1,
                description: 'description',
                finishDate: '',
                urgent: 0,
                syncTime: '',
                file: '',
              ));
            },
          ),
        ),
      ),
    );
  }
}
