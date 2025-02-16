//. Range Checker Program:
//Write a Dart program that checks if a number is within a specified range using logical operators and
//prints the result.
import 'dart:io';

void main() {
  print('plass Enter Degree');
  int Degree = int.parse(stdin.readLineSync()!);
  if (Degree > 90) {
    print('excellent');
  } else if (Degree < 90 || Degree > 60) {
    print('good');
  } else {
    print('Failed');
  }
}
