/// Operations on DateTime object

// add or subtract DateTime with Duration
// object.add(Duration(days: int))
// object.subtract(Duration(days: int))

void main() {
  DateTime today = DateTime.now();

  print('Today: $today');
  print('Today: ${today.day}'); // 21

  // Add one day
  DateTime tomorrow = today.add(Duration(days: 1));
  print('Tomorrow $tomorrow'); // 22

  // Subtract one day
  DateTime yesterday = today.subtract(Duration(days: 1));
  print('Yesterday $yesterday'); // 20

  // Current weekday (1 = Monday, 7 = Sunday)
  int currentWeekDay = today.weekday;
  print('Today Weekday: ${getCurrentWeekDay(currentWeekDay)}');
}

/// Returns weekday name from weekday number
String getCurrentWeekDay(int weekDay) {
  switch (weekDay) {
    case 1:
      return 'Monday';
    case 2:
      return 'Tuesday';
    case 3:
      return 'Wednesday';
    case 4:
      return 'Thursday';
    case 5:
      return 'Friday';
    case 6:
      return 'Saturday';
    case 7:
      return 'Sunday';
    default:
      return 'Unknown-Day';
  }
}
