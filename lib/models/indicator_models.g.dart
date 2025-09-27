// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndicatorRowImpl _$$IndicatorRowImplFromJson(Map<String, dynamic> json) =>
    _$IndicatorRowImpl(
      name: json['name'] as String,
      indicatorToMoId: (json['indicator_to_mo_id'] as num).toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$IndicatorRowImplToJson(_$IndicatorRowImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'indicator_to_mo_id': instance.indicatorToMoId,
      'parent_id': instance.parentId,
      'order': instance.order,
    };

_$MessagesImpl _$$MessagesImplFromJson(Map<String, dynamic> json) =>
    _$MessagesImpl(
      error: json['error'] as String?,
      warning: json['warning'] as String?,
      info: json['info'] as String?,
    );

Map<String, dynamic> _$$MessagesImplToJson(_$MessagesImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'warning': instance.warning,
      'info': instance.info,
    };

_$DataBlockImpl _$$DataBlockImplFromJson(Map<String, dynamic> json) =>
    _$DataBlockImpl(
      page: (json['page'] as num).toInt(),
      pagesCount: (json['pages_count'] as num).toInt(),
      rowsCount: (json['rows_count'] as num).toInt(),
      rowsTotalCount: (json['rows_total_count'] as num).toInt(),
      rows:
          (json['rows'] as List<dynamic>)
              .map((e) => IndicatorRow.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$DataBlockImplToJson(_$DataBlockImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pages_count': instance.pagesCount,
      'rows_count': instance.rowsCount,
      'rows_total_count': instance.rowsTotalCount,
      'rows': instance.rows,
    };

_$IndicatorsResponseImpl _$$IndicatorsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$IndicatorsResponseImpl(
  messages: Messages.fromJson(json['MESSAGES'] as Map<String, dynamic>),
  data: DataBlock.fromJson(json['DATA'] as Map<String, dynamic>),
  status: json['STATUS'] as String,
);

Map<String, dynamic> _$$IndicatorsResponseImplToJson(
  _$IndicatorsResponseImpl instance,
) => <String, dynamic>{
  'MESSAGES': instance.messages,
  'DATA': instance.data,
  'STATUS': instance.status,
};
