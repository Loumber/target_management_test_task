import 'package:freezed_annotation/freezed_annotation.dart';

part 'indicator_models.freezed.dart';
part 'indicator_models.g.dart';

@freezed
class IndicatorRow with _$IndicatorRow {
  const factory IndicatorRow({
    required String name,
    required int indicatorToMoId,
    int? parentId,
    int? order,
  }) = _IndicatorRow;

  factory IndicatorRow.fromJson(Map<String, dynamic> json) => _$IndicatorRowFromJson(json);
}

@freezed
class Messages with _$Messages {
  const factory Messages({
    String? error,
    String? warning,
    String? info,
  }) = _Messages;

  factory Messages.fromJson(Map<String, dynamic> json) => _$MessagesFromJson(json);
}

@freezed
class DataBlock with _$DataBlock {
  const factory DataBlock({
    required int page,
    required int pagesCount,
    required int rowsCount,
    required int rowsTotalCount,
    required List<IndicatorRow> rows,
  }) = _DataBlock;

  factory DataBlock.fromJson(Map<String, dynamic> json) => _$DataBlockFromJson(json);
}

@freezed
class IndicatorsResponse with _$IndicatorsResponse {
  const factory IndicatorsResponse({
    required Messages messages,
    required DataBlock data,
    required String status,
  }) = _IndicatorsResponse;

  factory IndicatorsResponse.fromJson(Map<String, dynamic> json) => _$IndicatorsResponseFromJson(json);
}

