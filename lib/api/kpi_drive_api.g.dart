// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi_drive_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _KpiDriveRetrofitApi implements KpiDriveRetrofitApi {
  _KpiDriveRetrofitApi(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://api.dev.kpi-drive.ru/_api';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<IndicatorsResponse> getMoIndicators(
    String authorization,
    String periodStart,
    String periodEnd,
    String periodKey,
    String requestedMoId,
    String behaviourKey,
    String withResult,
    String responseFields,
    String authUserId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': authorization};
    _headers.removeWhere((k, v) => v == null);
    final _data = FormData();
    _data.fields.add(MapEntry('period_start', periodStart));
    _data.fields.add(MapEntry('period_end', periodEnd));
    _data.fields.add(MapEntry('period_key', periodKey));
    _data.fields.add(MapEntry('requested_mo_id', requestedMoId));
    _data.fields.add(MapEntry('behaviour_key', behaviourKey));
    _data.fields.add(MapEntry('with_result', withResult));
    _data.fields.add(MapEntry('response_fields', responseFields));
    _data.fields.add(MapEntry('auth_user_id', authUserId));
    final _options = _setStreamType<IndicatorsResponse>(
      Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data',
          )
          .compose(
            _dio.options,
            '/indicators/get_mo_indicators',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late IndicatorsResponse _value;
    try {
      _value = IndicatorsResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<HttpResponse<void>> saveIndicatorField(
    String authorization,
    String periodStart,
    String periodEnd,
    String periodKey,
    String indicatorToMoId,
    String fieldName,
    String fieldValue,
    String authUserId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': authorization};
    _headers.removeWhere((k, v) => v == null);
    final _data = FormData();
    _data.fields.add(MapEntry('period_start', periodStart));
    _data.fields.add(MapEntry('period_end', periodEnd));
    _data.fields.add(MapEntry('period_key', periodKey));
    _data.fields.add(MapEntry('indicator_to_mo_id', indicatorToMoId));
    _data.fields.add(MapEntry('field_name', fieldName));
    _data.fields.add(MapEntry('field_value', fieldValue));
    _data.fields.add(MapEntry('auth_user_id', authUserId));
    final _options = _setStreamType<HttpResponse<void>>(
      Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data',
          )
          .compose(
            _dio.options,
            '/indicators/save_indicator_instance_field',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<void>(_options);
    final httpResponse = HttpResponse(null, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
