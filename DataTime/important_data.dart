/// Advanced DateTime operations

void main() {
  /// 1. Epoch Time (Milliseconds Since 1 Jan 1970 UTC)
  int epoch = DateTime.now().millisecondsSinceEpoch;
  print("Epoch (ms): $epoch");

  // Convert epoch back to DateTime
  DateTime fromEpoch = DateTime.fromMillisecondsSinceEpoch(epoch);
  print('From Epoch: $fromEpoch');
  // Note: last 3 digits represent milliseconds

  /// 2. Manual Date Modification (DateTime has no copyWith)
  DateTime today = DateTime.now();

  // Adding 5 days (date-only)
  DateTime modifiedDate = DateTime(today.year, today.month, today.day + 5);
  print('Modified Date: $modifiedDate');

  /// 3. Month and Leap Year Handling
  // Last day of February 2026
  DateTime lastDayOfFeb = DateTime(2026, 3, 0); // DateTime(2026, 2 + 1, 0); 0-previous month last day
  print('Last day of Feb 2026: ${lastDayOfFeb.day}');

  /// 4. Check leap year
  // isLeapYear() check if a year is leap year
  bool isLeapYear(int year) => DateTime(year, 2, 29).month == 2;
  print('Is 2024 leap year? ${isLeapYear(2024)}');

  /// 5. Manual Date Formatting (without intl)
  DateTime now = DateTime.now();
  print('Formatted: ${now.day}-${now.month}-${now.year}');

  /// 6. Age calculation (years only)
  // calculateAge() calculate age in years
  int calculateAge(DateTime birth) {
    DateTime now = DateTime.now();
    int years = now.year - birth.year;

    if (now.month < birth.month || (now.month == birth.month && now.day < birth.day)) {
      years--;
    }
    return years;
  }
  DateTime birthDate = DateTime(1999, 2, 6);
  print('Age: ${calculateAge(birthDate)}');

  /// 7. Compare only dates (ignore time)
  // isSameDate() compare only date
  bool isSameDate(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
  DateTime a = DateTime.now();
  DateTime b = DateTime.now().subtract(const Duration(hours: 5));
  print('Same date: ${isSameDate(a, b)}');


  /// 8. Time zone info
  print('TimeZone Name: ${now.timeZoneName}');
  print('TimeZone Offset: ${now.timeZoneOffset}');

  // Epoch (ms): 1770354076162
  // From Epoch: 2026-02-06 10:31:16.162
  // Modified Date: 2026-02-11 00:00:00.000
  // Last day of Feb 2026: 28
  // Is 2024 leap year? true
  // Formatted: 6-2-2026
  // Age: 27
  // Same date: true
  // TimeZone Name: India Standard Time
  // TimeZone Offset: 5:30:00.000000
}


/// To become Advanced:
// intl package deeply
// DateTime + Clean Architecture
// Timezone-safe API handling
// Calendar & Scheduler logic
// Unit testing DateTime logic
