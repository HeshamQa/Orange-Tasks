import 'dart:io';

void main() {
  print("Enter a num to check if Even or Odd : ");

  try {
    int n = int.parse(stdin.readLineSync()!);
    if (n % 2 == 0) {
      print('$n is even');
    } else {
      print('$n is odd');
    }
  } catch (e) {
    print('Please enter a valid number');
  }
}
