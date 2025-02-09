//What is the difference between var and dynamic in Dart? Provide an example of each.
void main() {
  var name = 'nada';
  dynamic value;
  // name = 25;     error
  // name = 20.5;   error
  // name = true;   error
  value = 'nada'; // work
  value = 25; // work
  value = 25.5; // work
  value = true; // work
  print(name);
  print(value);
  // In the use case of a variable of type var, when a vertex is assigned to it, it gives this variable a type according to the data assigned to it .
  //But dynamic, it is not a specific type of data, and the data type of this variable can change all the time.
}
