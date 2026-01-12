class Rectangle {
  double? _width;
  double? _height;

  double get width => _width ?? 0.0;
  double get height => _height ?? 0.0;

  set width(double width) {
    if (width < 0.0) {
      throw Exception('Width must be positive');
    }
    _width = width;
  }

  set height(double height) {
    if (height < 0.0) {
      throw Exception('Height must be positive');
    }
    _height = height;
  }

  double get area => (_height ?? 0.0) * (_width ?? 0.0);
}

void main() {
  Rectangle rectangle = Rectangle();
  print('Height ${rectangle.height}'); // Height 0.0
  print('Width ${rectangle.width}'); // Width 0.0
  print('Area: ${rectangle.area}'); // Area: 0.0

  rectangle.height = 2.5;
  rectangle.width = 2;

  print('Height ${rectangle.height}'); // Height 2.5
  print('Width ${rectangle.width}'); // Width 2.0

  try{
    rectangle.height = -1;
  } catch (e) {
    print(e); // Exception: Height must be positive
  }

  print('Area: ${rectangle.area}'); // Area: 5.0
}
