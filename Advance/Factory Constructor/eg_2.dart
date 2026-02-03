enum ShapeType { circle, rectangle }

abstract class Shape {
  // factory constructor that return subclass object
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.rectangle:
        return Rectangle();
      default:
        throw "Invalid shape type";
    }
  }

  void draw();
}

class Circle implements Shape {
  // implement draw method
  @override
  void draw() => print("Drawing circle");
}

class Rectangle implements Shape {
  // implement draw method
  @override
  void draw() => print("Drawing rectangle");
}

void main() {
  try {
    // Shape objects
    Shape shape1 = Shape(ShapeType.circle);
    Shape shape2 = Shape(ShapeType.rectangle);
    shape1.draw(); // Drawing circle
    shape2.draw(); // Drawing rectangle
  } catch (e) {
    print(e);
  }
}
