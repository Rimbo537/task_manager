import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/domain/cubit/data_cubit/data_cubit.dart';
import 'package:task_manager/domain/cubit/data_cubit/data_state.dart';
import 'package:task_manager/ui/widgets/main/components/card/card.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  void initState() {
    context.read<DataCubit>().postData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataCubit, DataState>(
      builder: (context, state) {
        if (state.model.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: state.model.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                child: CardWidget(
                  model: state.model[index],
                ),
              );
            },
          );
        }
      },
    );
  }
}
