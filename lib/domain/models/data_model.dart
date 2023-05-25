import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  const factory DataModel({
    required String? error,
    required List<TaskModel> data,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String taskId,
    required int status,
    required String name,
    required int type,
    required String description,
    required String finishDate,
    required int urgent,
    required String syncTime,
    required String file,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
