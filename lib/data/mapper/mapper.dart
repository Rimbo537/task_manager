import 'package:task_manager/data/response/response.dart';
import 'package:task_manager/domain/models/data_model.dart';

extension PostDataMapper on TaskResponse {
  TaskModel toDomain() {
    return TaskModel(
      description: description,
      file: file,
      finishDate: finishDate,
      name: name,
      status: status,
      syncTime: syncTime,
      taskId: taskId,
      type: type,
      urgent: urgent,
    );
  }
}
