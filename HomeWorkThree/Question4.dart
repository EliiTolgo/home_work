// Use Map and List to create a program that stores weather data for different cities (temperature,
//humidity, etc.). Write a function that can retrieve and print weather details using a city name.

import 'dart:io';

void main() {
  Map<String, List> weatherData = {
    'Egypt': [50, 70],
    'Palestine': [33, 80],
    'Algeria': [23, 25],
  };
  print(' pless Enter city');
  String cityName = stdin.readLineSync()!;
  switch (cityName) {
    case 'Egypt':
      weather(weatherData, cityName);
    case 'Palestine':
      weather(weatherData, cityName);
    case 'Algeria':
      weather(weatherData, cityName);
    default:
      {
        print('Error');
      }
  }
}

void weather(Map<String, List> weatherData, String cityName) {
  print(weatherData[cityName]);
}
