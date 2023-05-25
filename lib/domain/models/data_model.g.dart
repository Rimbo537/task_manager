// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      error: json['error'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data,
    };

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
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

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
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
