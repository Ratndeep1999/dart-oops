abstract class Area {
  void area();
}

abstract class Perimeter {
  void perimeter();
}

class Rectangle implements Perimeter, Area {
  int length, breadth;

  Rectangle({required this.length, required this.breadth});

  @override
  void area() => print('The area of the rectangle is ${length * breadth}');

  @override
  void perimeter() =>
      print('The perimeter of the rectangle is ${2 * (length + breadth)}');
}

void main() {
  Rectangle rectangle = Rectangle(length: 5, breadth: 8);
  rectangle.area(); // The area of the rectangle is 40
  rectangle.perimeter(); // The perimeter of the rectangle is 26
}
