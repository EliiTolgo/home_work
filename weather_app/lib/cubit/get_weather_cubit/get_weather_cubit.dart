import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Model/weather_model.dart';
import '../../services/weather_services.dart';
import 'get_weather_states.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  late WeatherModel weatherModel;
  getWeather({required String cityName}) async {
    try {
      weatherModel = await WeatherServices().getCurrentWeather(
        cityName: cityName,
      );
      emit(WeatherLaodedState(weatherModel: weatherModel));
    } catch (e) {
      emit(WeatherFiluerState());
    }
  }
}
