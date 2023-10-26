import 'dart:io';

void main() {
  print(
      "Choose the method you want from the list: \n1 addition\n2 subtraction\n3 multiplication\n4 division");
  String? num = stdin.readLineSync();
  print('Enter a the first num: ');
  int n1 = int.parse(stdin.readLineSync()!);
  print('Enter a the second num: ');
  int n2 = int.parse(stdin.readLineSync()!);
  if (num == "1") {
    print("$n1 + $n2 = ${n1 + n2}");
  } else if (num == "2") {
    print("$n1 - $n2 = ${n1 - n2}");
  } else if (num == "3") {
    print("$n1 * $n2 = ${n1 * n2}");
  } else if (num == "2") {
    try {
      print("$n1 / $n2 = ${n1 / n2}");
    } catch (e) {
      print("Error: Division by zero is not allowed.");
    }
  } else {
    print("Invalid operation!");
  }
}
