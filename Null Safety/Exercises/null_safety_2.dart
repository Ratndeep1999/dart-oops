/// 1. Null assertion operator ! to print null if the value is null.
/// 2.  ...

void main() {
  // 1
  int result = returnNullButSometimesNot()!;
  print(result);

  // 2
  int length = findLength('Sonali')!;
  print('Length of the text is $length'); // Length of the text is 6
}

// Function that return null or not.
int? returnNullButSometimesNot() {
  return 3;
}

// Function that return String length
int? findLength(String? text) {
  return text!.length;
  // return text != null ? text.length : null;
}
