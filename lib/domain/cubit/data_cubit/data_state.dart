import 'package:task_manager/domain/cubit/base_cubit.dart';
import 'package:task_manager/domain/models/data_model.dart';

abstract class DataState extends BaseState {
  @override
  abstract final String? error;

  @override
  abstract final bool isLoading;

  abstract final List<TaskModel> model;

  DataState copyWith({
    String? error,
    bool? isLoading,
    List<TaskModel> model,
  });
}

class DataStateInitial extends DataState {
  DataStateInitial({
    this.error,
    this.isLoading = false,
    required this.model,
  });

  @override
  final String? error;

  @override
  final bool isLoading;

  @override
  final List<TaskModel> model;

  @override
  DataState copyWith({
    String? error,
    bool? isLoading,
    List<TaskModel>? model,
  }) {
    return DataStateInitial(
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
      model: model ?? this.model,
    );
  }
}
