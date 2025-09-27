import 'package:dio/dio.dart';
import 'package:target_management_test_task/api/kpi_drive_api.dart';
import 'package:target_management_test_task/models/indicator_models.dart';

class IndicatorsRepository {
  IndicatorsRepository({Dio? dio, String? token})
      : _api = KpiDriveRetrofitApi(dio ?? Dio()),
        _token = token;

  
  final KpiDriveRetrofitApi _api;
  final String? _token;

  Future<List<IndicatorRow>> fetchIndicators({
    required String periodStart,
    required String periodEnd,
    required String periodKey,
    required String requestedMoId,
    String behaviourKey = 'task,kpi_task',
    String withResult = 'false',
    String responseFields = 'name,indicator_to_mo_id,parent_id,order',
    required String authUserId,
  }) async {
    final res = await _api.getMoIndicators(
      _token != null ? 'Bearer $_token' : '',
      periodStart,
      periodEnd,
      periodKey,
      requestedMoId,
      behaviourKey,
      withResult,
      responseFields,
      authUserId,
    );
    return res.data.rows;
  }

  Future<void> saveParent({
    required int indicatorToMoId,
    required int parentId,
    required String periodStart,
    required String periodEnd,
    required String periodKey,
    required String authUserId,
  }) async {
    await _api.saveIndicatorField(
      _token != null ? 'Bearer $_token' : '',
      periodStart,
      periodEnd,
      periodKey,
      '$indicatorToMoId',
      'parent_id',
      '$parentId',
      authUserId,
    );
  }

  Future<void> saveOrder({
    required int indicatorToMoId,
    required int order,
    required String periodStart,
    required String periodEnd,
    required String periodKey,
    required String authUserId,
  }) async {
    await _api.saveIndicatorField(
      _token != null ? 'Bearer $_token' : '',
      periodStart,
      periodEnd,
      periodKey,
      '$indicatorToMoId',
      'order',
      '$order',
      authUserId,
    );
  }
}
