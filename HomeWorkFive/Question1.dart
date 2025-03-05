//Basic Arithmetic Calculator
//Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
//Handle cases where division by zero might occur.

import 'dart:io';

void main() {
  print('pless Enter First number');
  double num1 = double.parse(stdin.readLineSync()!);
  print('pless Enter The second number');
  double num2 = double.parse(stdin.readLineSync()!);
  print('Choose the operation you want');
  String operation = stdin.readLineSync()!;
  switch (operation) {
    case '+':
      print(addition(num2, num1));
    case '*':
      print(multiple(num2, num1));
    case '/':
      print(Division(num2, num1));
    case '-':
      print(Subtraction(num2, num1));
    default:
      {
        print('Error selecting operation ');
      }
  }
}

double addition(double num1, double num2) {
  double result = num1 + num2 ;
  return result;
}

double multiple(double num1, double num2) {
  double result = num1 * num2 ;
  return result;
}

double Subtraction(double num1, double num2) {
  double result = num1 - num2 ;
  return result;
}

double Division(
  double num1,
  double num2,
) {
  double result;
  if (num2 != 0) {
    result = num1 / num2;
    return result;
  } else {
    return result = 0;
  }
}