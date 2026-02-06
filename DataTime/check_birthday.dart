void main() {
  DateTime today = DateTime.now();

  // Target date: 06 Feb 2026
  DateTime targetDate = DateTime(2026, 2, 6);

  bool isSameDate =
      today.year == targetDate.year &&
          today.month == targetDate.month &&
          today.day == targetDate.day;

  if (isSameDate) {
    print('Today is 06 Feb 2026 🎉');
  } else {
    print('Today is NOT 06 Feb 2026');
  }
}
// Today is 06 Feb 2026 🎉