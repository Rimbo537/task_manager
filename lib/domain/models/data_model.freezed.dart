// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  String? get error => throw _privateConstructorUsedError;
  List<TaskModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call({String? error, List<TaskModel> data});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$$_DataModelCopyWith(
          _$_DataModel value, $Res Function(_$_DataModel) then) =
      __$$_DataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, List<TaskModel> data});
}

/// @nodoc
class __$$_DataModelCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$_DataModel>
    implements _$$_DataModelCopyWith<$Res> {
  __$$_DataModelCopyWithImpl(
      _$_DataModel _value, $Res Function(_$_DataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = null,
  }) {
    return _then(_$_DataModel(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModel implements _DataModel {
  const _$_DataModel({required this.error, required final List<TaskModel> data})
      : _data = data;

  factory _$_DataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelFromJson(json);

  @override
  final String? error;
  final List<TaskModel> _data;
  @override
  List<TaskModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DataModel(error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataModel &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataModelCopyWith<_$_DataModel> get copyWith =>
      __$$_DataModelCopyWithImpl<_$_DataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel(
      {required final String? error,
      required final List<TaskModel> data}) = _$_DataModel;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$_DataModel.fromJson;

  @override
  String? get error;
  @override
  List<TaskModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DataModelCopyWith<_$_DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  String get taskId => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get finishDate => throw _privateConstructorUsedError;
  int get urgent => throw _privateConstructorUsedError;
  String get syncTime => throw _privateConstructorUsedError;
  String get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {String taskId,
      int status,
      String name,
      int type,
      String description,
      String finishDate,
      int urgent,
      String syncTime,
      String file});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? status = null,
    Object? name = null,
    Object? type = null,
    Object? description = null,
    Object? finishDate = null,
    Object? urgent = null,
    Object? syncTime = null,
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      finishDate: null == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as String,
      urgent: null == urgent
          ? _value.urgent
          : urgent // ignore: cast_nullable_to_non_nullable
              as int,
      syncTime: null == syncTime
          ? _value.syncTime
          : syncTime // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String taskId,
      int status,
      String name,
      int type,
      String description,
      String finishDate,
      int urgent,
      String syncTime,
      String file});
}

/// @nodoc
class __$$_TaskModelCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$_TaskModel>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? status = null,
    Object? name = null,
    Object? type = null,
    Object? description = null,
    Object? finishDate = null,
    Object? urgent = null,
    Object? syncTime = null,
    Object? file = null,
  }) {
    return _then(_$_TaskModel(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      finishDate: null == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as String,
      urgent: null == urgent
          ? _value.urgent
          : urgent // ignore: cast_nullable_to_non_nullable
              as int,
      syncTime: null == syncTime
          ? _value.syncTime
          : syncTime // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskModel implements _TaskModel {
  const _$_TaskModel(
      {required this.taskId,
      required this.status,
      required this.name,
      required this.type,
      required this.description,
      required this.finishDate,
      required this.urgent,
      required this.syncTime,
      required this.file});

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

  @override
  final String taskId;
  @override
  final int status;
  @override
  final String name;
  @override
  final int type;
  @override
  final String description;
  @override
  final String finishDate;
  @override
  final int urgent;
  @override
  final String syncTime;
  @override
  final String file;

  @override
  String toString() {
    return 'TaskModel(taskId: $taskId, status: $status, name: $name, type: $type, description: $description, finishDate: $finishDate, urgent: $urgent, syncTime: $syncTime, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.finishDate, finishDate) ||
                other.finishDate == finishDate) &&
            (identical(other.urgent, urgent) || other.urgent == urgent) &&
            (identical(other.syncTime, syncTime) ||
                other.syncTime == syncTime) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taskId, status, name, type,
      description, finishDate, urgent, syncTime, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      __$$_TaskModelCopyWithImpl<_$_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskModelToJson(
      this,
    );
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel(
      {required final String taskId,
      required final int status,
      required final String name,
      required final int type,
      required final String description,
      required final String finishDate,
      required final int urgent,
      required final String syncTime,
      required final String file}) = _$_TaskModel;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  String get taskId;
  @override
  int get status;
  @override
  String get name;
  @override
  int get type;
  @override
  String get description;
  @override
  String get finishDate;
  @override
  int get urgent;
  @override
  String get syncTime;
  @override
  String get file;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
