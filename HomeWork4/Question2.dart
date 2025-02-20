//2. Arithmetic Operators, Conditional Statements & Functions
//Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
//bonus based on the following rules:
//- If the employee has worked for 5 or more years, they get a 10% bonus.
//- Otherwise, they get a 5% bonus.
//The function should return the bonus amount.
//Then, call the function inside `main()` and print the result.

import 'dart:io';

void main() {
  print('pless Enter your salary');
  int salary = int.parse(stdin.readLineSync()!);
  print('pless Enter your yearsWorked');
  int yearsWorked = int.parse(stdin.readLineSync()!);
  print(calculateBonus(salary, yearsWorked));
}

double calculateBonus(int salary, int yearsWorked) {
  double bonus;
  if (yearsWorked > 5) {
    bonus = salary + (salary * 0.10);
  } else {
    bonus = salary + (salary * 0.5);
  }
  return bonus;
}
