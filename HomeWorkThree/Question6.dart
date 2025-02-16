// . Working with Maps - Student Details:
// - Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
// and remove entries from the map, printing the map after each operation.
// - Task 2: Iterate over the map and print each key-value pair.

void main() {
  Map<String, String> student = {'name': 'nada', "age ": '25', 'grade': 'good'};
  print(student);
  student['name'] = 'rana';
  student['age'] = '22';
  student['grade'] = 'good';
  print(student);
  student.remove('name');
  print(student);
  student.forEach(
    (key, value) {
      print('$key: $value');
    },
  );
}
