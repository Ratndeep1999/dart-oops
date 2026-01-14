/// Multilevel Inheritance
// A class is inherit fromm another class & that class also inherit from another class.
// A class is extend from another class, and that class also extended from another class.

class SolarSystem {
  String galaxyName = 'Andro-meda';
  int noOfPlanets = 8;

  showDetails(){
    print('Galaxy: $galaxyName');
    print('Total Planets: $noOfPlanets');
  }
}

class Star extends SolarSystem {
  String starName = 'Sun';

  showDetails(){
    super.showDetails();
    print('Star: $starName');
  }
}

class Planet extends Star {
  String planetName = 'Earth';
  int noOfMoons = 1;

  showDetails(){
    super.showDetails();
    print('Planet name: $planetName');
    print('No. of Moons: $noOfMoons');
  }
}

void main(){
  Planet earth = Planet();
  earth.showDetails();
  // Galaxy: Andro-meda
  // Total Planets: 8
  // Star: Sun
  // Planet name: Earth
  // No. of Moons: 1

  earth.galaxyName = 'Milke-way';
  earth.showDetails();
  // Galaxy: Milke-way
  // Total Planets: 8
  // Star: Sun
  // Planet name: Earth
  // No. of Moons: 1
}