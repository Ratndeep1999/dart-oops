class Laptop {
  turnOn() => print('Laptop Turn On..!');

  turnOff() => print('Laptop Turn Off..');
}

class MacBook implements Laptop {
  @override
  turnOn() => print('MacBook Turned On..!');

  @override
  turnOff() => print('MacBook Turned Off..!');
}
