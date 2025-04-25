import 'package:weather_app/Model/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLaodedState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLaodedState({required this.weatherModel});
}

class WeatherFiluerState extends WeatherState {}
