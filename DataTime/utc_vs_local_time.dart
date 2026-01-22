/// UTC vs Time
// Sometime, backend APIs usually send UTC time,
// but mobile apps show local time.

/// UTC: Coordinated Universal Time (World Clock)
// Global standard time, same for everyone in the world.

/// Local Time:
// Time based on your country/region
// eg. India (IST) = UTC + 5:30

void main() {
  // get local time IST (base on country)
  DateTime localTime = DateTime.now();

  // get global time (world clock)
  DateTime utcTime = DateTime.now().toUtc();

  print('Local Time: $localTime'); // Local Time: 2026-01-21 20:52:46.121306
  print('UTC Time: $utcTime'); // UTC Time: 2026-01-21 15:22:46.121306Z

  /// UTC: 10:00 AM to IST: 3:30 PM
  // Convert UTC to Local
  DateTime apiUtcTime = DateTime.parse("2026-01-21T10:00:00Z");
  DateTime getLocalTime = apiUtcTime.toLocal();
  print('Local Time: $getLocalTime'); // Local Time: 2026-01-21 15:30:00.000

  // Convert Local to UTC
  DateTime apiLocalTime = DateTime.parse("2026-01-21T10:30:00");
  DateTime getUtcTime = apiLocalTime.toUtc();
  print('UTC Time: $getUtcTime'); // UTC Time: 2026-01-21 05:00:00.000Z

  /// DateTime constructor varient to get custom time
  DateTime custom = DateTime(1999, 2, 6, 10, 30, 45, 500); // year,month,day,hur,min,sec,milli-sec
  print('Custom Time: $custom'); // Custom Time: 1999-02-06 10:30:45.500
}
