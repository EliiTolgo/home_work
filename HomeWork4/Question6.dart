//6. Null Safety, Encapsulation & Classes
//Create a class `Person` with the following attributes:
//- `String name`
//- `int? age` (nullable)
//- `bool isStudent` (default is false)
//Implement:
//- A constructor that initializes `name` and `age`.
//- A method `displayInfo()` that prints the person's details.
//In `main()`, create an instance of `Person` and call `displayInfo()`.

void main() {
  Person nada = Person(name: 'nada Gamal', age: 25, isStudent: false);
  nada.displayInfo();
}

class Person {
  final String name;
  int? age;
  bool isStudent = false;

  Person({required this.name, age, isStudent}) {
    this.age = age;
    this.isStudent = isStudent;
  }
  void displayInfo() {
    print(
        'name is $name and age is $age and her is ${isStudent ? ' Student' : 'not Student'}');
  }
}
