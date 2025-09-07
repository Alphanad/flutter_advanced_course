import 'package:flutter_advanced_course/core/usecases/use_case.dart';
import 'package:flutter_advanced_course/core/resorces/data_state.dart';
import 'package:flutter_advanced_course/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:flutter_advanced_course/features/feature_weather/domain/repository/weather_repository.dart';

class GetCurrentWeatherUseCase implements UseCase<DataState<CurrentCityEntity>, String> {
  final WeatherRepository weatherRepository;

  GetCurrentWeatherUseCase(this.weatherRepository);

  @override
  Future<DataState<CurrentCityEntity>> call(String cityName) {
    return weatherRepository.fetchCurrentWeatherData(cityName);
  }
}
