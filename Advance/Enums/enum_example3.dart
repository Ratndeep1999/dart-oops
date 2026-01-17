enum TrafficLight {
  red("Stop"),
  yellow("Slow Down"),
  green("Go");

  final String action; // variable
  const TrafficLight(this.action); // constructor

  void display() => print("Light: $name, Action: $action");
}

void main(){
  var light = TrafficLight.green;
  light.display(); // Light: green, Action: Go

  // Iterate all values
  for(TrafficLight light in TrafficLight.values){
    light.display();
  }
  // Light: red, Action: Stop
  // Light: yellow, Action: Slow Down
  // Light: green, Action: Go
}
