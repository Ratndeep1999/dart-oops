/// Const constructor
// const constructor creates compile-time constant objects.
// If an object is created using const,
// Dart reuses the same instance in memory instead of creating a new one.
// constant object value can not be change

/// Rules
// all properties of class must be final
// constructor does not have any body and logic
// only class containing const constructor is initialize using const keyword.
// object must be created using const

class Point {
  final int x;
  final int y;

  const Point({required this.x, required this.y});
}

void main() {
  /// without const
  Point object1 = Point(x: 10, y: 5);
  print('Object1 hashcode: ${object1.hashCode}'); // Object1 hashcode: 706269865

  Point object2 = Point(x: 10, y: 5);
  print('Object2 hashcode: ${object2.hashCode}'); // Object2 hashcode: 203114227

  print(object1 == object2); // false

  /// with const
  Point object3 = const Point(x: 5, y: 15);
  print('Object3 hashcode: ${object3.hashCode}'); // Object3 hashcode: 870744149

  Point object4 = const Point(x: 5, y: 15);
  print('Object4 hashcode: ${object3.hashCode}'); // Object4 hashcode: 870744149

  print(object3 == object4); // true
}
