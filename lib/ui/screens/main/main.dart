import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/domain/cubit/data_cubit/data_cubit.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/screens/create/create.dart';
import 'package:task_manager/ui/widgets/components/bg_widget.dart';
import 'package:task_manager/ui/widgets/components/custom_button.dart';
import 'package:task_manager/ui/widgets/main/components/app_bar/custom_app_bar.dart';
import 'package:task_manager/ui/widgets/main/main_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
@override
  void initState() {
    context.read<DataCubit>().postData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          elevation: 0,
          title: const CustomAppBar(),
        ),
        floatingActionButton: CustomButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CreateScreen()));
          },
          padding: const EdgeInsets.all(10),
          borderRadius: 25,
          child: const Icon(
            Icons.add,
            size: 50,
            color: AppColors.secondaryVariant,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: const MainWidget(),
        ),
      ),
    );
  }
}
