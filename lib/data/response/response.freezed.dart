// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataResponse _$DataResponseFromJson(Map<String, dynamic> json) {
  return _DataResponse.fromJson(json);
}

/// @nodoc
mixin _$DataResponse {
  String? get error => throw _privateConstructorUsedError;
  List<TaskResponse> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataResponseCopyWith<DataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataResponseCopyWith<$Res> {
  factory $DataResponseCopyWith(
          DataResponse value, $Res Function(DataResponse) then) =
      _$DataResponseCopyWithImpl<$Res, DataResponse>;
  @useResult
  $Res call({String? error, List<TaskResponse> data});
}

/// @nodoc
class _$DataResponseCopyWithImpl<$Res, $Val extends DataResponse>
    implements $DataResponseCopyWith<$Res> {
  _$DataResponseCopyWithImpl(this._value, this._then);

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
              as List<TaskResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataResponseCopyWith<$Res>
    implements $DataResponseCopyWith<$Res> {
  factory _$$_DataResponseCopyWith(
          _$_DataResponse value, $Res Function(_$_DataResponse) then) =
      __$$_DataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, List<TaskResponse> data});
}

/// @nodoc
class __$$_DataResponseCopyWithImpl<$Res>
    extends _$DataResponseCopyWithImpl<$Res, _$_DataResponse>
    implements _$$_DataResponseCopyWith<$Res> {
  __$$_DataResponseCopyWithImpl(
      _$_DataResponse _value, $Res Function(_$_DataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? data = null,
  }) {
    return _then(_$_DataResponse(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TaskResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataResponse implements _DataResponse {
  const _$_DataResponse(
      {required this.error, required final List<TaskResponse> data})
      : _data = data;

  factory _$_DataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataResponseFromJson(json);

  @override
  final String? error;
  final List<TaskResponse> _data;
  @override
  List<TaskResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DataResponse(error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataResponse &&
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
  _$$_DataResponseCopyWith<_$_DataResponse> get copyWith =>
      __$$_DataResponseCopyWithImpl<_$_DataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataResponseToJson(
      this,
    );
  }
}

abstract class _DataResponse implements DataResponse {
  const factory _DataResponse(
      {required final String? error,
      required final List<TaskResponse> data}) = _$_DataResponse;

  factory _DataResponse.fromJson(Map<String, dynamic> json) =
      _$_DataResponse.fromJson;

  @override
  String? get error;
  @override
  List<TaskResponse> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DataResponseCopyWith<_$_DataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskResponse _$TaskResponseFromJson(Map<String, dynamic> json) {
  return _TaskResponse.fromJson(json);
}

/// @nodoc
mixin _$TaskResponse {
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
  $TaskResponseCopyWith<TaskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskResponseCopyWith<$Res> {
  factory $TaskResponseCopyWith(
          TaskResponse value, $Res Function(TaskResponse) then) =
      _$TaskResponseCopyWithImpl<$Res, TaskResponse>;
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
class _$TaskResponseCopyWithImpl<$Res, $Val extends TaskResponse>
    implements $TaskResponseCopyWith<$Res> {
  _$TaskResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_TaskResponseCopyWith<$Res>
    implements $TaskResponseCopyWith<$Res> {
  factory _$$_TaskResponseCopyWith(
          _$_TaskResponse value, $Res Function(_$_TaskResponse) then) =
      __$$_TaskResponseCopyWithImpl<$Res>;
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
class __$$_TaskResponseCopyWithImpl<$Res>
    extends _$TaskResponseCopyWithImpl<$Res, _$_TaskResponse>
    implements _$$_TaskResponseCopyWith<$Res> {
  __$$_TaskResponseCopyWithImpl(
      _$_TaskResponse _value, $Res Function(_$_TaskResponse) _then)
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
    return _then(_$_TaskResponse(
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
class _$_TaskResponse implements _TaskResponse {
  const _$_TaskResponse(
      {required this.taskId,
      required this.status,
      required this.name,
      required this.type,
      required this.description,
      required this.finishDate,
      required this.urgent,
      required this.syncTime,
      required this.file});

  factory _$_TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TaskResponseFromJson(json);

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
    return 'TaskResponse(taskId: $taskId, status: $status, name: $name, type: $type, description: $description, finishDate: $finishDate, urgent: $urgent, syncTime: $syncTime, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskResponse &&
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
  _$$_TaskResponseCopyWith<_$_TaskResponse> get copyWith =>
      __$$_TaskResponseCopyWithImpl<_$_TaskResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskResponseToJson(
      this,
    );
  }
}

abstract class _TaskResponse implements TaskResponse {
  const factory _TaskResponse(
      {required final String taskId,
      required final int status,
      required final String name,
      required final int type,
      required final String description,
      required final String finishDate,
      required final int urgent,
      required final String syncTime,
      required final String file}) = _$_TaskResponse;

  factory _TaskResponse.fromJson(Map<String, dynamic> json) =
      _$_TaskResponse.fromJson;

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
  _$$_TaskResponseCopyWith<_$_TaskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
