//8. Switch Case, Functions & Default Values
//Write a function `getDayType(String day)` that:
//- Uses a switch case to return "Weekend" if the day is "Saturday" or "Sunday".
//- Returns "Weekday" otherwise.
//- If the input is invalid, return "Invalid day".
//Call the function inside `main()` and print the result.

import 'dart:io';

void main() {
  print('pless enter the day');
  String day = stdin.readLineSync()!;
  getDayType(day);
}

void getDayType(String day) {
  switch (day) {
    case 'Saturday':
      print('Weekend');
    case 'Sunday':
      print('Weekend');
    case 'Monday':
      print('Weekday');
    case 'Tuesday':
      print('Weekday');
    case 'Wednesday':
      print('Weekday');
    case 'Thursday':
      print('Weekday');
    case 'Friday':
      print('Weekday');
    default:
      print('Invalid day');
  }
}
