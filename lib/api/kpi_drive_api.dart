import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:target_management_test_task/models/indicator_models.dart';

part 'kpi_drive_api.g.dart';

@RestApi(baseUrl: 'https://api.dev.kpi-drive.ru/_api')
abstract class KpiDriveRetrofitApi {
  factory KpiDriveRetrofitApi(Dio dio, {String baseUrl}) = _KpiDriveRetrofitApi;

  @POST('/indicators/get_mo_indicators')
  @MultiPart()
  Future<IndicatorsResponse> getMoIndicators(
    @Header('Authorization') String authorization,
    @Part(name: 'period_start') String periodStart,
    @Part(name: 'period_end') String periodEnd,
    @Part(name: 'period_key') String periodKey,
    @Part(name: 'requested_mo_id') String requestedMoId,
    @Part(name: 'behaviour_key') String behaviourKey,
    @Part(name: 'with_result') String withResult,
    @Part(name: 'response_fields') String responseFields,
    @Part(name: 'auth_user_id') String authUserId,
  );

  @POST('/indicators/save_indicator_instance_field')
  @MultiPart()
  Future<HttpResponse<void>> saveIndicatorField(
    @Header('Authorization') String authorization,
    @Part(name: 'period_start') String periodStart,
    @Part(name: 'period_end') String periodEnd,
    @Part(name: 'period_key') String periodKey,
    @Part(name: 'indicator_to_mo_id') String indicatorToMoId,
    @Part(name: 'field_name') String fieldName,
    @Part(name: 'field_value') String fieldValue,
    @Part(name: 'auth_user_id') String authUserId,
  );
}
