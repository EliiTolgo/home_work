import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:weather_app/Model/weather_model.dart';
import 'dart:convert';

class WeatherServices {
Future<WeatherModel> getCurrentWeather  ({required cityName })async {
  Response response = await http.get(Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=0f3bceefeff449a6875173729252104&q=$cityName&days=1'));
  WeatherModel weatherModel = WeatherModel.fromJsom(jsonDecode(response.body));
  return weatherModel;
}
}