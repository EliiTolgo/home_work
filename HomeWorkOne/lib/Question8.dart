//What is the difference between the num and double data types in Dart?
void main() {
  double doubleValue = 12.5;
  print(doubleValue); // 12.5
  num numValue = 25.5;
  print(numValue); // 25.5
  doubleValue = 58;
  print(doubleValue); // 58.0
  numValue = 25;
  print(numValue); //25

  //The double variable is used to store decimal numbers, and it can also take integer numbers, but it treats them as a decimal number by adding a zero after the ten. like 58.0
  // But a variable of type num can store decimal numbers as well as integer numbers as integer numbers
}
