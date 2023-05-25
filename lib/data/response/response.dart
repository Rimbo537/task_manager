import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class DataResponse with _$DataResponse {
  const factory DataResponse({
    required String? error,
    required List<TaskResponse> data,
  }) = _DataResponse;

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);
}

@freezed
class TaskResponse with _$TaskResponse {
  const factory TaskResponse({
    required String taskId,
    required int status,
    required String name,
    required int type,
    required String description,
    required String finishDate,
    required int urgent,
    required String syncTime,
    required String file,
  }) = _TaskResponse;

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);
}
