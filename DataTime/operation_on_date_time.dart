/// Operations on DateTime object

// add or subtract DateTime
// object.add(Duration(days: int))
// object.subtract(Duration(days: int))

void main() {
  DateTime today = DateTime.now();
  print('Today: ${today.day}'); // 21

  // add one day
  DateTime tomorrow = today.add(Duration(days: 1));
  print('Tomorrow $tomorrow'); // 22

  // remove one day
  DateTime yesterday = today.subtract(Duration(days: 1));
  print('Yesterday $yesterday'); // 20

  // current day of the week
  int currentWeekDay = today.weekday;
  print('Today Weekday: ${getCurrentWeekDay(currentWeekDay)}');
}

/// Method to return currentWeekDay
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
