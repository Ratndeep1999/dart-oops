/// Convert custom String type date and time into DateTime type
/// DateTime.parse(String) method is use to convert


void main(){
  String myBirthData = "1999-02-06"; // year-month-day
  DateTime myBirthDate = DateTime.parse(myBirthData);

  print('Year: ${myBirthDate.year}'); // Year: 1999
  print('Month: ${myBirthDate.month}'); // Month: 2
  print('Day: '+myBirthDate.day.toString()); // Day: 6
}