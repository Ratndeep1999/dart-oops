/// Get total difference between two DateTime objects

void main() {

  // Current data and time
  DateTime toady = DateTime.now();

  // Birthday converted from String to DateTime
  DateTime myBirthday = DateTime.parse('1999-02-06');

  // Difference between two dates
  Duration duration = toady.difference(myBirthday);

  print('Completed Days till now: ${duration.inDays}');
  print('Completed Hours: ${duration.inHours}');
  print('Completed Minutes: ${duration.inMinutes}');
  print('Completed Seconds: ${duration.inSeconds}');
  print("Completed Milliseconds : ${duration.inMilliseconds}");
  print("Completed Microseconds : ${duration.inMicroseconds}");

  // Completed Days till now: 9846
  // Completed Hours: 236324
  // Completed Minutes: 14179443
  // Completed Seconds: 850766628
  // Completed Milliseconds : 850766628324
  // Completed Microseconds : 850766628324959
}
