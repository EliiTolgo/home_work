import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/Model/weather_model.dart';

class WeatherServices {
  final Dio dio = Dio();
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '0f3bceefeff449a6875173729252104';

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage =
          e.response?.data['error']['message'] ??
          'oops there was an error, try later';
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was an error, try later');
    }
  }
}
