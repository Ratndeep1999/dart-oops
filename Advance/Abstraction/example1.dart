// abstract class
abstract class Shape {
  double dim1, dim2;

  Shape({required this.dim1, required this.dim2});

  void area();
}

// Sub-class Rectangle
class Rectangle extends Shape {
  Rectangle(double height, double width) : super(dim1: height, dim2: width);

  @override
  void area() => print('Area of rectangle is ${dim1 * dim2}');
}

// Sub-class Triangle
class Triangle extends Shape {
  Triangle({required super.dim1, required super.dim2}); // same type as the parent class constructor

  @override
  void area() => print('Area of triangle is ${0.5 * dim1 * dim2}');
}

// Sub-class Square
class Square extends Shape {
  Square(double side) : super(dim1: side, dim2: side);

  @override
  void area() => print('Area of a square is ${dim1 * dim2}');
}

// Sub-class Circle
class Circle extends Shape {
  double radius;

  Circle(this.radius) : super(dim1: radius, dim2: radius);

  @override
  void area() => print('Area of circle is ${3.14 * radius * radius}');
}

void main() {
  Rectangle rectangle = Rectangle(10, 5);
  rectangle.area(); // Area of rectangle is 50.0

  Triangle triangle = Triangle(dim1: 5, dim2: 8);
  triangle.area(); // Area of triangle is 20.0

  Square square = Square(5);
  square.area(); // Area of a square is 25.0

  Circle circle = Circle(5);
  circle.area(); // Area of circle is 78.5
}

/// Polymorphism: Rectangle, Triangle, Square and Circle these can be treated as
/// Shape types, allowing to write code that works with these shapes generically.
