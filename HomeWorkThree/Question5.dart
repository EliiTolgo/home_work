// Class Creation and Dot Operator Usage:
// Create a class with a few properties and methods. Instantiate the class and use the dot operator to
// access and print its properties and methods

void main() {
  car bmwCar = car();
  bmwCar.make = 'Germany';
  bmwCar.model = 'BMW IX';
  bmwCar.Printcar();
}

class car {
  String? make;
  String? model;
  void Printcar() {
    print('the car made in $make and the model is $model');
  }
}
