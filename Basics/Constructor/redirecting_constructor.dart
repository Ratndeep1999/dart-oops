/// Redirecting constructor
// Redirecting constructors allow you to call another constructor from within a constructor.

class Rectangle {
  double width;
  double height;

  // Parameterized constructor
  Rectangle({required this.width, required this.height});

  // Redirecting constructor
  Rectangle.square(double size)
    : this(width: size, height: size); // call main constructor

  showData() {
    print('Width: $width');
    print('Height: $height');
  }

  findArea() => width * height;
}

void main() {
  Rectangle square = Rectangle.square(5);
  square.showData();
  // Width: 5.0
  // Height: 5.0
  print('Area of Square: ${square.findArea()}');
  // Area of Square: 25.0
}
