import 'package:flutter/material.dart';

import 'package:flutter_advanced_course/core/widgets/main_wrapper.dart';
import 'package:flutter_advanced_course/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:flutter_advanced_course/features/feature_weather/data/repository/weather_repositoryimpl.dart';
import 'package:flutter_advanced_course/features/feature_weather/domain/usecases/get_current_weather_usecase.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    GetCurrentWeatherUseCase getCurrentWeatherUseCase = GetCurrentWeatherUseCase(WeatherRepositoryImpl(ApiProvider()));

    getCurrentWeatherUseCase('tehran');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainWrapper(),
    );
  }
}
