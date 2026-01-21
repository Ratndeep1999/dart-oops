/// DataTime()
// all features of related to date and time archived by using DateTime().

void main() {
  // current date and time
  DateTime currentDataTime = DateTime.now();
  print('Current Date Time: $currentDataTime');
  // Current Date Time: 2026-01-21 16:19:50.790291

  // current year
  int year = DateTime.now().year;
  print(year); // 2026

  // current month
  int month = DateTime.now().month;
  print(month); // 1

  // current day
  int day = DateTime.now().day;
  print(day); // 21

  // current hour
  int hour = DateTime.now().hour;
  print(hour); //

  // current minutes
  int minutes = DateTime.now().minute;
  print(minutes); //

  // current seconds
  int seconds = DateTime.now().second;
  print(seconds); //

  // current microseconds
  int microsecond = DateTime.now().microsecond;
  print(microsecond); //

  // current milliseconds
  int milliSeconds = DateTime.now().microsecond;
  print(milliSeconds); //
}
