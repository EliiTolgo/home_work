// Implement a program that uses a List to store grocery items. It should allow adding, removing, and
//displaying items. Use functions with return types and optional/named parameters. Make sure to
//handle possible null values.
import 'dart:io';
import 'dart:math';

// كل دا يفضل يتعمل في class
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
      // الصح هنا اني اعمل اتشيك اذا القيمة نل او لا علشان مينفعش اضيف قيمة نل في الليست 
  grocery.add(newItems);
  /// مش محتاجه اعمل ريترن لأن لما اباصي ليست فأنا بعمل اثنين اسم كلهم بيشاوروا على نفس الليست فلو عدلت هتمسع علطول بدون ريتين 
  return grocery;
}

List<String> removeGrocery(
    {required List<String> grocery, required String removeItems}) {
      // التشيك هلهاش لازمه لانه لو هيمسح حاجه من ليست فاضية مش هعمل حاجه لانه الريموف بتشتغل انه يلف على الليست 
      //هل اللي عايزه امسحهه في الليست و لالا لو موجود هيمسحه مش موجود مش هيعمل حاتجه 
  if (grocery != null) {
    grocery.remove(removeItems);
    return grocery;
  } else
    return grocery;
}
