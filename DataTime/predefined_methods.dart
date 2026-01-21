/// Predefined methods of 'DateTime' class that returns bool value.

// isBefore(dateTime): return true if given date-time is before today date-time.
// isAfter(dateTime): return true if given date-time is after today date-time.
// isAtSameMovementAs(dateTime): return true if both dates is matched.

void main() {
  // get current date-time
  DateTime today = DateTime.now();

  // get birthdayData from String to DateTime type
  DateTime myBirthday = DateTime.parse("1999-02-06");

  if (myBirthday.isAtSameMomentAs(today)) {
    print("Today is My Birthday, Happy Birthday to MySelf");
  } else if (myBirthday.isAfter(today)) {
    print("My Birthday is After Today");
  } else if (myBirthday.isBefore(today)) {
    print("My Birthday is Before Today");
  }
}
