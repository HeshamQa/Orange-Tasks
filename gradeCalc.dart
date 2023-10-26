import 'dart:io';

void main() {
  print("Enter your score: ");
  int score = int.parse(stdin.readLineSync()!);
  if (score >= 90) {
    print('A');
  } else if (score >= 80) {
    print('B');
  } else if (score >= 70) {
    print('C');
  } else if (score >= 60) {
    print('D');
  } else {
    print('F');
  }
}
