class Area {
  final int length;
  final int breadth;
  final int area;

  // Private constructor ( _internal() ) with initializer list
  const Area._internal(this.length, this.breadth) : area = length * breadth;

  // Factory constructor
  factory Area(int length, int breadth) {
    if (length < 0 || breadth < 0) {
      throw Exception("Length and breadth must be positive");
    }
    // redirect to private constructor
    return Area._internal(length, breadth);
  }
}

void main() {
  Area area1 = Area(15, 10);
  print("Area1 is: ${area1.area}"); // Area1 is: 150

  try {
    Area area2 = Area(-20, 10);
    print("Area2 is: ${area2.area}"); //
  } catch (e) {
    print(e); // Exception: Length and breadth must be positive
  }
}