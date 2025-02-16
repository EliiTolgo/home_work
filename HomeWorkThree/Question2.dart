// Implement a program that uses a List to store grocery items. It should allow adding, removing, and
//displaying items. Use functions with return types and optional/named parameters. Make sure to
//handle possible null values.
import 'dart:io';
import 'dart:math';

void main() {
  List<String> grocery = ['apple', 'milk', 'bread'];
  print(
      'What process do you want? If it is an addition, write the word add, if it is a deletion, write the word remove, and if it is a print, write the word print ');
  String operation = stdin.readLineSync()!;
  switch (operation) {
    case 'add':
      print(' pless Enter yor new items');
      String newItems = stdin.readLineSync()!;
      print(addGrocery(grocery: grocery, newItems: newItems));
    case 'remove':
      print(' pless Enter yor new items');
      String removeItems = stdin.readLineSync()!;
      print(addGrocery(grocery: grocery, newItems: removeItems));
    case 'print':
      print(grocery);
  }
}

List<String> addGrocery(
    {required List<String> grocery, required String newItems}) {
  grocery.add(newItems);
  return grocery;
}

List<String> removeGrocery(
    {required List<String> grocery, required String removeItems}) {
  if (grocery != null) {
    grocery.remove(removeItems);
    return grocery;
  } else
    return grocery;
}
