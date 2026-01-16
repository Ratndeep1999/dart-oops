enum weekDays { Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday }

void main() {
  weekDays today = weekDays.Saturday;
  print(today.runtimeType);

  switch (today) {
    case weekDays.Sunday:
      print('Today is Sunday');
      break;
    case weekDays.Monday:
      print('Today is Monday');
      break;
    case weekDays.Tuesday:
      print('Today is Tuesday');
      break;
    case weekDays.Wednesday:
      print('Today is Wednesday');
      break;
    case weekDays.Thursday:
      print('Today is Thursday');
      break;
    case weekDays.Friday:
      print('Today is Friday');
      break;
    case weekDays.Saturday:
      print('Today is Saturday');
      break;
  }

  /// Print all enums
  for (weekDays days in weekDays.values) {
    print(days);
  }
  // weekDays.Sunday
  // weekDays.Monday
  // weekDays.Tuesday
  // weekDays.Wednesday
  // weekDays.Thursday
  // weekDays.Friday
  // weekDays.Saturday
}
