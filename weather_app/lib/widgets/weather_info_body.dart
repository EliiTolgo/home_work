import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/services/weather_services.dart';

class WeatherInfoBody extends StatelessWidget {
  WeatherInfoBody({Key? key}) : super(key: key);
  final WeatherServices weatherServices = WeatherServices();

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          Text(
            'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network('https:${weatherModel.image!}'),
              Text(
                weatherModel.temp.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              Column(
                children: [
                  Text(
                    'Maxtemp:${weatherModel.maxTemp.round()}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Mintemp:${weatherModel.minTemp.round()}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),
          Text(
            weatherModel.weatherConditions,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ],
      ),
    );
  }
}
