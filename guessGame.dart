import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  final int num = 1 + random.nextInt(100);
  int? guess;
  print('I have selected a random number between ${1} and ${100}.');
  print('Try to guess it.');
  while (guess != num) {
    stdout.write('Enter your guess: ');
    String? inp = stdin.readLineSync();
    try {
      guess = int.parse(inp!);
    } catch (e) {
      print('Please enter a valid number.');
      continue;
    }
    if (guess < 1 || guess > 100) {
      print('Please guess a number between ${1} and ${100}.');
    } else if (guess < num) {
      print('Try a higher number.');
    } else if (guess > num) {
      print('Try a lower number.');
    }
  }

  print('You guessed the number.');
}
