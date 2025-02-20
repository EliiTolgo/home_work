//9. OOP, Constructors & Getters
//Create a class `Rectangle` with:
//- Private attributes `_width` and `_height`.
//- A constructor that initializes the values.
//- A getter `area` that calculates and returns the area.
//In `main()`, create a `Rectangle` object and print its area.

void main() {
  Rectangle rectangle1 = Rectangle(width: 25, height: 25);
  rectangle1.height = 5;
  rectangle1.width = 6;
  print(rectangle1.getArea(rectangle1.height, rectangle1.width));
}

class Rectangle {
  double _width = 0;
  double _height = 0;
  Rectangle({required double width, required double height});
  set width(double width) {
    this._width = width;
  }

  double get width => this._width;
  set height(double height) {
    this._height = height;
  }

  double get height => this._height;

  double getArea(double height, double width) {
    double area = height * width;
    return area;
  }
}
