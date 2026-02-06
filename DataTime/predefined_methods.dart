/// Predefined DateTime methods that return bool values

// isBefore(dateTime other): return true if given date-time is before today date-time.
// isAfter(dateTime other): return true if given date-time is after today date-time.
// isAtSameMovementAs(dateTime other): return true if both dates is matched.

void main() {
  // Get current date-time
  DateTime today = DateTime.now();

  // Birthday converted from String to DateTime
  DateTime myBirthday = DateTime.parse("1999-02-06");

  if (myBirthday.isAtSameMomentAs(today)) {
    print("Today is My Birthday, Happy Birthday to MySelf");
  } else if (myBirthday.isAfter(today)) {
    print("My Birthday is After Today");
  } else if (myBirthday.isBefore(today)) {
    print("My Birthday is Before Today");
  }
}
