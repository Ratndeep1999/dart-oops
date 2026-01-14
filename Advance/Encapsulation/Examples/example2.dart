class Circle {
  double? _radius;

  double? get radius => _radius ?? 0.0;
  double get diameter => (_radius ?? 0.0) * 2;
  double get area => 3.14 * (_radius ?? 0.0) * (_radius ?? 0.0);

  set radius(double radius) {
    if (radius < 0.0) {
      throw Exception('Radius must be positive');
    }
    _radius = radius;
  }
}

void main() {
  var circle = Circle();
  print('Radius: ${circle.radius}'); // Radius: 0.0
  print('Diameter: ${circle.diameter}'); // Diameter: 0.0
  print('Area: ${circle.area}'); // Area: 0.0

  circle.radius = 5;
  print('Radius: ${circle.radius}'); // Radius: 5.0
  print('Diameter: ${circle.diameter}'); // Diameter: 10.0
  print('Area: ${circle.area}'); // Area: 78.5

  circle.radius = 10;
  print('New Radius: ${circle.radius}'); // New Radius: 10.0
  print('Diameter: ${circle.diameter}'); // Diameter: 20.0
  print('Area: ${circle.area}'); // Area: 314.0

  // circle.radius = -1;
  // Unhandled exception:
  // Exception: Radius must be positive
  try {
    circle.radius = -5;
  } catch (e) {
    print(e); // Exception: Radius must be positive.
  }
}

/// Computed properties: are dynamically calculated base on the other data.
// 'diameter' and 'area' both properties are computed base ont the radius.