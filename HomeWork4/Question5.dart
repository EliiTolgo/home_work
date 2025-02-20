// 5. Sets, Functions & Return Statement
//Write a function `uniqueNames(List<String> names)` that:
//- Accepts a list of names.
//- Returns a Set containing only unique names.
// Call the function inside `main()` and print the result.

import 'dart:io';

void main() {
  List<String> names = [];
  print('pless enter How many names you want to enter');
  int listLength = int.parse(stdin.readLineSync()!);
  String name;
  for (int i = 0; i < listLength; i++) {
    name = stdin.readLineSync()!;
    names.add(name);
  }
  print(uniqueNames(names));
}

Set<String> uniqueNames(List<String> names) {
  Set<String> uniqueNames = {...names};
  return uniqueNames;
}
