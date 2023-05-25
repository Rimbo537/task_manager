// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataResponse _$$_DataResponseFromJson(Map<String, dynamic> json) =>
    _$_DataResponse(
      error: json['error'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) => TaskResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataResponseToJson(_$_DataResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data,
    };

_$_TaskResponse _$$_TaskResponseFromJson(Map<String, dynamic> json) =>
    _$_TaskResponse(
      taskId: json['taskId'] as String,
      status: json['status'] as int,
      name: json['name'] as String,
      type: json['type'] as int,
      description: json['description'] as String,
      finishDate: json['finishDate'] as String,
      urgent: json['urgent'] as int,
      syncTime: json['syncTime'] as String,
      file: json['file'] as String,
    );

Map<String, dynamic> _$$_TaskResponseToJson(_$_TaskResponse instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'status': instance.status,
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'finishDate': instance.finishDate,
      'urgent': instance.urgent,
      'syncTime': instance.syncTime,
      'file': instance.file,
    };
