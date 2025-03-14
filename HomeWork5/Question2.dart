//Temperature Converter
//Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
//Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
//Convert accordingly and return the result.
import 'dart:io';

void main() {
  print('pless Enter temperature');
  double temperature = double.parse(stdin.readLineSync()!);

  print('Choose the temperature if Celsius enter C if Fahrenheit enter F');
  String unit = stdin.readLineSync()!;
  print(temperatureConverter(temperature, unit));
}

double temperatureConverter(double temperature, String unit) {
  double result;
  if (unit == 'C') {
    return result = (temperature * 1.8) + 32;
  } else if (unit == 'F') {
    return result = (temperature - 32) * 1.8;
  } else {
    return result = 0.0;
  }
}
