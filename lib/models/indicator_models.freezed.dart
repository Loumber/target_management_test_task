// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indicator_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

IndicatorRow _$IndicatorRowFromJson(Map<String, dynamic> json) {
  return _IndicatorRow.fromJson(json);
}

/// @nodoc
mixin _$IndicatorRow {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'indicator_to_mo_id')
  int get indicatorToMoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order')
  int? get order => throw _privateConstructorUsedError;

  /// Serializes this IndicatorRow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IndicatorRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndicatorRowCopyWith<IndicatorRow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndicatorRowCopyWith<$Res> {
  factory $IndicatorRowCopyWith(
    IndicatorRow value,
    $Res Function(IndicatorRow) then,
  ) = _$IndicatorRowCopyWithImpl<$Res, IndicatorRow>;
  @useResult
  $Res call({
    String name,
    @JsonKey(name: 'indicator_to_mo_id') int indicatorToMoId,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'order') int? order,
  });
}

/// @nodoc
class _$IndicatorRowCopyWithImpl<$Res, $Val extends IndicatorRow>
    implements $IndicatorRowCopyWith<$Res> {
  _$IndicatorRowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IndicatorRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? indicatorToMoId = null,
    Object? parentId = freezed,
    Object? order = freezed,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            indicatorToMoId:
                null == indicatorToMoId
                    ? _value.indicatorToMoId
                    : indicatorToMoId // ignore: cast_nullable_to_non_nullable
                        as int,
            parentId:
                freezed == parentId
                    ? _value.parentId
                    : parentId // ignore: cast_nullable_to_non_nullable
                        as int?,
            order:
                freezed == order
                    ? _value.order
                    : order // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IndicatorRowImplCopyWith<$Res>
    implements $IndicatorRowCopyWith<$Res> {
  factory _$$IndicatorRowImplCopyWith(
    _$IndicatorRowImpl value,
    $Res Function(_$IndicatorRowImpl) then,
  ) = __$$IndicatorRowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    @JsonKey(name: 'indicator_to_mo_id') int indicatorToMoId,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'order') int? order,
  });
}

/// @nodoc
class __$$IndicatorRowImplCopyWithImpl<$Res>
    extends _$IndicatorRowCopyWithImpl<$Res, _$IndicatorRowImpl>
    implements _$$IndicatorRowImplCopyWith<$Res> {
  __$$IndicatorRowImplCopyWithImpl(
    _$IndicatorRowImpl _value,
    $Res Function(_$IndicatorRowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IndicatorRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? indicatorToMoId = null,
    Object? parentId = freezed,
    Object? order = freezed,
  }) {
    return _then(
      _$IndicatorRowImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        indicatorToMoId:
            null == indicatorToMoId
                ? _value.indicatorToMoId
                : indicatorToMoId // ignore: cast_nullable_to_non_nullable
                    as int,
        parentId:
            freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                    as int?,
        order:
            freezed == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IndicatorRowImpl implements _IndicatorRow {
  const _$IndicatorRowImpl({
    required this.name,
    @JsonKey(name: 'indicator_to_mo_id') required this.indicatorToMoId,
    @JsonKey(name: 'parent_id') this.parentId,
    @JsonKey(name: 'order') this.order,
  });

  factory _$IndicatorRowImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndicatorRowImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'indicator_to_mo_id')
  final int indicatorToMoId;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  @JsonKey(name: 'order')
  final int? order;

  @override
  String toString() {
    return 'IndicatorRow(name: $name, indicatorToMoId: $indicatorToMoId, parentId: $parentId, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndicatorRowImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.indicatorToMoId, indicatorToMoId) ||
                other.indicatorToMoId == indicatorToMoId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, indicatorToMoId, parentId, order);

  /// Create a copy of IndicatorRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndicatorRowImplCopyWith<_$IndicatorRowImpl> get copyWith =>
      __$$IndicatorRowImplCopyWithImpl<_$IndicatorRowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndicatorRowImplToJson(this);
  }
}

abstract class _IndicatorRow implements IndicatorRow {
  const factory _IndicatorRow({
    required final String name,
    @JsonKey(name: 'indicator_to_mo_id') required final int indicatorToMoId,
    @JsonKey(name: 'parent_id') final int? parentId,
    @JsonKey(name: 'order') final int? order,
  }) = _$IndicatorRowImpl;

  factory _IndicatorRow.fromJson(Map<String, dynamic> json) =
      _$IndicatorRowImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'indicator_to_mo_id')
  int get indicatorToMoId;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  @JsonKey(name: 'order')
  int? get order;

  /// Create a copy of IndicatorRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndicatorRowImplCopyWith<_$IndicatorRowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return _Messages.fromJson(json);
}

/// @nodoc
mixin _$Messages {
  String? get error => throw _privateConstructorUsedError;
  String? get warning => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;

  /// Serializes this Messages to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Messages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessagesCopyWith<Messages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesCopyWith<$Res> {
  factory $MessagesCopyWith(Messages value, $Res Function(Messages) then) =
      _$MessagesCopyWithImpl<$Res, Messages>;
  @useResult
  $Res call({String? error, String? warning, String? info});
}

/// @nodoc
class _$MessagesCopyWithImpl<$Res, $Val extends Messages>
    implements $MessagesCopyWith<$Res> {
  _$MessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Messages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? warning = freezed,
    Object? info = freezed,
  }) {
    return _then(
      _value.copyWith(
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
            warning:
                freezed == warning
                    ? _value.warning
                    : warning // ignore: cast_nullable_to_non_nullable
                        as String?,
            info:
                freezed == info
                    ? _value.info
                    : info // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MessagesImplCopyWith<$Res>
    implements $MessagesCopyWith<$Res> {
  factory _$$MessagesImplCopyWith(
    _$MessagesImpl value,
    $Res Function(_$MessagesImpl) then,
  ) = __$$MessagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, String? warning, String? info});
}

/// @nodoc
class __$$MessagesImplCopyWithImpl<$Res>
    extends _$MessagesCopyWithImpl<$Res, _$MessagesImpl>
    implements _$$MessagesImplCopyWith<$Res> {
  __$$MessagesImplCopyWithImpl(
    _$MessagesImpl _value,
    $Res Function(_$MessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Messages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? warning = freezed,
    Object? info = freezed,
  }) {
    return _then(
      _$MessagesImpl(
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
        warning:
            freezed == warning
                ? _value.warning
                : warning // ignore: cast_nullable_to_non_nullable
                    as String?,
        info:
            freezed == info
                ? _value.info
                : info // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagesImpl implements _Messages {
  const _$MessagesImpl({this.error, this.warning, this.info});

  factory _$MessagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagesImplFromJson(json);

  @override
  final String? error;
  @override
  final String? warning;
  @override
  final String? info;

  @override
  String toString() {
    return 'Messages(error: $error, warning: $warning, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.warning, warning) || other.warning == warning) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, warning, info);

  /// Create a copy of Messages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesImplCopyWith<_$MessagesImpl> get copyWith =>
      __$$MessagesImplCopyWithImpl<_$MessagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagesImplToJson(this);
  }
}

abstract class _Messages implements Messages {
  const factory _Messages({
    final String? error,
    final String? warning,
    final String? info,
  }) = _$MessagesImpl;

  factory _Messages.fromJson(Map<String, dynamic> json) =
      _$MessagesImpl.fromJson;

  @override
  String? get error;
  @override
  String? get warning;
  @override
  String? get info;

  /// Create a copy of Messages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessagesImplCopyWith<_$MessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataBlock _$DataBlockFromJson(Map<String, dynamic> json) {
  return _DataBlock.fromJson(json);
}

/// @nodoc
mixin _$DataBlock {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'pages_count')
  int get pagesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'rows_count')
  int get rowsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'rows_total_count')
  int get rowsTotalCount => throw _privateConstructorUsedError;
  List<IndicatorRow> get rows => throw _privateConstructorUsedError;

  /// Serializes this DataBlock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataBlockCopyWith<DataBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBlockCopyWith<$Res> {
  factory $DataBlockCopyWith(DataBlock value, $Res Function(DataBlock) then) =
      _$DataBlockCopyWithImpl<$Res, DataBlock>;
  @useResult
  $Res call({
    int page,
    @JsonKey(name: 'pages_count') int pagesCount,
    @JsonKey(name: 'rows_count') int rowsCount,
    @JsonKey(name: 'rows_total_count') int rowsTotalCount,
    List<IndicatorRow> rows,
  });
}

/// @nodoc
class _$DataBlockCopyWithImpl<$Res, $Val extends DataBlock>
    implements $DataBlockCopyWith<$Res> {
  _$DataBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pagesCount = null,
    Object? rowsCount = null,
    Object? rowsTotalCount = null,
    Object? rows = null,
  }) {
    return _then(
      _value.copyWith(
            page:
                null == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int,
            pagesCount:
                null == pagesCount
                    ? _value.pagesCount
                    : pagesCount // ignore: cast_nullable_to_non_nullable
                        as int,
            rowsCount:
                null == rowsCount
                    ? _value.rowsCount
                    : rowsCount // ignore: cast_nullable_to_non_nullable
                        as int,
            rowsTotalCount:
                null == rowsTotalCount
                    ? _value.rowsTotalCount
                    : rowsTotalCount // ignore: cast_nullable_to_non_nullable
                        as int,
            rows:
                null == rows
                    ? _value.rows
                    : rows // ignore: cast_nullable_to_non_nullable
                        as List<IndicatorRow>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DataBlockImplCopyWith<$Res>
    implements $DataBlockCopyWith<$Res> {
  factory _$$DataBlockImplCopyWith(
    _$DataBlockImpl value,
    $Res Function(_$DataBlockImpl) then,
  ) = __$$DataBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int page,
    @JsonKey(name: 'pages_count') int pagesCount,
    @JsonKey(name: 'rows_count') int rowsCount,
    @JsonKey(name: 'rows_total_count') int rowsTotalCount,
    List<IndicatorRow> rows,
  });
}

/// @nodoc
class __$$DataBlockImplCopyWithImpl<$Res>
    extends _$DataBlockCopyWithImpl<$Res, _$DataBlockImpl>
    implements _$$DataBlockImplCopyWith<$Res> {
  __$$DataBlockImplCopyWithImpl(
    _$DataBlockImpl _value,
    $Res Function(_$DataBlockImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DataBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pagesCount = null,
    Object? rowsCount = null,
    Object? rowsTotalCount = null,
    Object? rows = null,
  }) {
    return _then(
      _$DataBlockImpl(
        page:
            null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int,
        pagesCount:
            null == pagesCount
                ? _value.pagesCount
                : pagesCount // ignore: cast_nullable_to_non_nullable
                    as int,
        rowsCount:
            null == rowsCount
                ? _value.rowsCount
                : rowsCount // ignore: cast_nullable_to_non_nullable
                    as int,
        rowsTotalCount:
            null == rowsTotalCount
                ? _value.rowsTotalCount
                : rowsTotalCount // ignore: cast_nullable_to_non_nullable
                    as int,
        rows:
            null == rows
                ? _value._rows
                : rows // ignore: cast_nullable_to_non_nullable
                    as List<IndicatorRow>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DataBlockImpl implements _DataBlock {
  const _$DataBlockImpl({
    required this.page,
    @JsonKey(name: 'pages_count') required this.pagesCount,
    @JsonKey(name: 'rows_count') required this.rowsCount,
    @JsonKey(name: 'rows_total_count') required this.rowsTotalCount,
    required final List<IndicatorRow> rows,
  }) : _rows = rows;

  factory _$DataBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataBlockImplFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: 'pages_count')
  final int pagesCount;
  @override
  @JsonKey(name: 'rows_count')
  final int rowsCount;
  @override
  @JsonKey(name: 'rows_total_count')
  final int rowsTotalCount;
  final List<IndicatorRow> _rows;
  @override
  List<IndicatorRow> get rows {
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  @override
  String toString() {
    return 'DataBlock(page: $page, pagesCount: $pagesCount, rowsCount: $rowsCount, rowsTotalCount: $rowsTotalCount, rows: $rows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataBlockImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pagesCount, pagesCount) ||
                other.pagesCount == pagesCount) &&
            (identical(other.rowsCount, rowsCount) ||
                other.rowsCount == rowsCount) &&
            (identical(other.rowsTotalCount, rowsTotalCount) ||
                other.rowsTotalCount == rowsTotalCount) &&
            const DeepCollectionEquality().equals(other._rows, _rows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    page,
    pagesCount,
    rowsCount,
    rowsTotalCount,
    const DeepCollectionEquality().hash(_rows),
  );

  /// Create a copy of DataBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataBlockImplCopyWith<_$DataBlockImpl> get copyWith =>
      __$$DataBlockImplCopyWithImpl<_$DataBlockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataBlockImplToJson(this);
  }
}

abstract class _DataBlock implements DataBlock {
  const factory _DataBlock({
    required final int page,
    @JsonKey(name: 'pages_count') required final int pagesCount,
    @JsonKey(name: 'rows_count') required final int rowsCount,
    @JsonKey(name: 'rows_total_count') required final int rowsTotalCount,
    required final List<IndicatorRow> rows,
  }) = _$DataBlockImpl;

  factory _DataBlock.fromJson(Map<String, dynamic> json) =
      _$DataBlockImpl.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'pages_count')
  int get pagesCount;
  @override
  @JsonKey(name: 'rows_count')
  int get rowsCount;
  @override
  @JsonKey(name: 'rows_total_count')
  int get rowsTotalCount;
  @override
  List<IndicatorRow> get rows;

  /// Create a copy of DataBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataBlockImplCopyWith<_$DataBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndicatorsResponse _$IndicatorsResponseFromJson(Map<String, dynamic> json) {
  return _IndicatorsResponse.fromJson(json);
}

/// @nodoc
mixin _$IndicatorsResponse {
  @JsonKey(name: 'MESSAGES')
  Messages get messages => throw _privateConstructorUsedError;
  @JsonKey(name: 'DATA')
  DataBlock get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATUS')
  String get status => throw _privateConstructorUsedError;

  /// Serializes this IndicatorsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IndicatorsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndicatorsResponseCopyWith<IndicatorsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndicatorsResponseCopyWith<$Res> {
  factory $IndicatorsResponseCopyWith(
    IndicatorsResponse value,
    $Res Function(IndicatorsResponse) then,
  ) = _$IndicatorsResponseCopyWithImpl<$Res, IndicatorsResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'MESSAGES') Messages messages,
    @JsonKey(name: 'DATA') DataBlock data,
    @JsonKey(name: 'STATUS') String status,
  });

  $MessagesCopyWith<$Res> get messages;
  $DataBlockCopyWith<$Res> get data;
}

/// @nodoc
class _$IndicatorsResponseCopyWithImpl<$Res, $Val extends IndicatorsResponse>
    implements $IndicatorsResponseCopyWith<$Res> {
  _$IndicatorsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IndicatorsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? data = null,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            messages:
                null == messages
                    ? _value.messages
                    : messages // ignore: cast_nullable_to_non_nullable
                        as Messages,
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as DataBlock,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of IndicatorsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessagesCopyWith<$Res> get messages {
    return $MessagesCopyWith<$Res>(_value.messages, (value) {
      return _then(_value.copyWith(messages: value) as $Val);
    });
  }

  /// Create a copy of IndicatorsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataBlockCopyWith<$Res> get data {
    return $DataBlockCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IndicatorsResponseImplCopyWith<$Res>
    implements $IndicatorsResponseCopyWith<$Res> {
  factory _$$IndicatorsResponseImplCopyWith(
    _$IndicatorsResponseImpl value,
    $Res Function(_$IndicatorsResponseImpl) then,
  ) = __$$IndicatorsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'MESSAGES') Messages messages,
    @JsonKey(name: 'DATA') DataBlock data,
    @JsonKey(name: 'STATUS') String status,
  });

  @override
  $MessagesCopyWith<$Res> get messages;
  @override
  $DataBlockCopyWith<$Res> get data;
}

/// @nodoc
class __$$IndicatorsResponseImplCopyWithImpl<$Res>
    extends _$IndicatorsResponseCopyWithImpl<$Res, _$IndicatorsResponseImpl>
    implements _$$IndicatorsResponseImplCopyWith<$Res> {
  __$$IndicatorsResponseImplCopyWithImpl(
    _$IndicatorsResponseImpl _value,
    $Res Function(_$IndicatorsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IndicatorsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? data = null,
    Object? status = null,
  }) {
    return _then(
      _$IndicatorsResponseImpl(
        messages:
            null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                    as Messages,
        data:
            null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as DataBlock,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IndicatorsResponseImpl implements _IndicatorsResponse {
  const _$IndicatorsResponseImpl({
    @JsonKey(name: 'MESSAGES') required this.messages,
    @JsonKey(name: 'DATA') required this.data,
    @JsonKey(name: 'STATUS') required this.status,
  });

  factory _$IndicatorsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndicatorsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'MESSAGES')
  final Messages messages;
  @override
  @JsonKey(name: 'DATA')
  final DataBlock data;
  @override
  @JsonKey(name: 'STATUS')
  final String status;

  @override
  String toString() {
    return 'IndicatorsResponse(messages: $messages, data: $data, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndicatorsResponseImpl &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, messages, data, status);

  /// Create a copy of IndicatorsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndicatorsResponseImplCopyWith<_$IndicatorsResponseImpl> get copyWith =>
      __$$IndicatorsResponseImplCopyWithImpl<_$IndicatorsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IndicatorsResponseImplToJson(this);
  }
}

abstract class _IndicatorsResponse implements IndicatorsResponse {
  const factory _IndicatorsResponse({
    @JsonKey(name: 'MESSAGES') required final Messages messages,
    @JsonKey(name: 'DATA') required final DataBlock data,
    @JsonKey(name: 'STATUS') required final String status,
  }) = _$IndicatorsResponseImpl;

  factory _IndicatorsResponse.fromJson(Map<String, dynamic> json) =
      _$IndicatorsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'MESSAGES')
  Messages get messages;
  @override
  @JsonKey(name: 'DATA')
  DataBlock get data;
  @override
  @JsonKey(name: 'STATUS')
  String get status;

  /// Create a copy of IndicatorsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndicatorsResponseImplCopyWith<_$IndicatorsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
