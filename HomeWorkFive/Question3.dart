//Check Leap Year
//Write a function that determines if a given year is a leap year.
//A year is a leap year if it is divisible by 4 but not divisible by 100, except if it is also divisible by 400
import 'dart:io';

void main() {
  print('pless Enter First number');
  double Year = double.parse(stdin.readLineSync()!);
  if (Year % 4 == 0 || Year % 400 == 0 && Year % 100 != 0) {
    print('this year is Leap Year');
  } else {
    print('this year is not Leap Year');
  }
}
