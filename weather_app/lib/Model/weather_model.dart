class WeatherModel {
  final String cityName;
  final String date;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherConditions;

  WeatherModel({
    required this.cityName,
    required this.date,
    this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherConditions,
  });

  factory WeatherModel.fromJsom(josn) {
    return WeatherModel(
      image: josn['forecast']['forecastday']['0']['day']['condition']['icon'],
      cityName: josn['location']['name'],
      date: josn['current']['last_updated'],
      temp: josn['forecast']['forecastday']['0']['day']['avgtemp_c'],
      maxTemp: josn['forecast']['forecastday']['0']['day']['maxtemp_c'],
      minTemp: josn['forecast']['forecastday']['0']['day']['mintemp_c'],
      weatherConditions: josn['forecast']['forecastday']['0']['day']['condition']['text'],
    );
  }
}
