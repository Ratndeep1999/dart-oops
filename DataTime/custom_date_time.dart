/// Convert custom String type date and time into DateTime type
/// DateTime.parse(String) is used for conversion.


void main(){
  // Date in YYYY-MM-DD format
  String myBirthData = "1999-02-06"; // year-month-day

  // Convert String to DateTime
  DateTime myBirthDate = DateTime.parse(myBirthData);

  // Access DateTime properties
  print('Year: ${myBirthDate.year}'); // Year: 1999
  print('Month: ${myBirthDate.month}'); // Month: 2
  print('Day: '+myBirthDate.day.toString()); // Day: 6
}