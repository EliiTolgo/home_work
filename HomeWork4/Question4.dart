//4. Maps, Functions & User Input
//Create a Dart program that:
//- Declares a `Map<String, int>` where keys are fruit names and values are their prices.
//- Implements a function `getPrice(String fruitName)` that returns the price of a given fruit.
//- If the fruit is not found, return -1.
//Call the function inside `main()` and print the result.

import 'dart:io';

void main() {
  Map<String, int> fruit = {
    'Apple': 25,
    'Banana': 15,
    'Orange': 20,
    'Strawberry': 50,
    'Grapes': 30
  };
  print('pless Einter the fruit Name ');
  String fruitName = stdin.readLineSync()!;
  getPrice(fruit, fruitName);
  print(getPrice(fruit, fruitName));
}

int? getPrice(Map<String, int> fruit, String fruitName) {
  if (fruit.containsKey(fruitName)) {
    return fruit[fruitName];
  } else
    return -1;
}
