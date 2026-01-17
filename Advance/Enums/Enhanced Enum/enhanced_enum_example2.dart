abstract class Describable {
  String describe();
}

enum Planet implements Describable {
  mercury(0.39, 2439.7),
  venus(0.72, 6051.8),
  earth(1.0, 6371.0);

  final double distanceFromSun; // astronomical units
  final double radius; // kilometers

  const Planet(this.distanceFromSun, this.radius);

  double get surfaceArea => 4 * 3.14159 * radius * radius;

  @override
  String describe() =>
      "$name: Distance from sun = $distanceFromSun AU, Surface area = ${surfaceArea.toStringAsFixed(2)} km2";
}

void main() {
  Planet planet = Planet.earth;
  print(planet.describe());
  // earth: Distance from sun = 1.0 AU, Surface area = 510064041.08 km2

  for (Planet planet in Planet.values) {
    print(planet.describe());
  }
  // mercury: Distance from sun = 0.39 AU, Surface area = 74796684.88 km2
  // venus: Distance from sun = 0.72 AU, Surface area = 460233927.94 km2
  // earth: Distance from sun = 1.0 AU, Surface area = 510064041.08 km2
}
