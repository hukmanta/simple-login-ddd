import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_failure.freezed.dart';

@freezed
class WeatherFailure with _$WeatherFailure{
  const factory  WeatherFailure.noConnection() = NoConnection;
  const factory  WeatherFailure.internalServerError() = InternalServerError;
  const factory  WeatherFailure.userRequestError() = UserRequesrError;
  const factory WeatherFailure.jsonParsingError() = JsonParsingError;
}