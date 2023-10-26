import 'dart:io';

void main() {
  print(
      "Choose the method you want from the list: \n1 addition\n2 subtraction\n3 multiplication\n4 division");
  String? num = stdin.readLineSync();
  switch (num) {
    case "1":
      {
        addition();
        break;
      }
    case "2":
      {
        subtraction();
        break;
      }
    case "3":
      {
        multiplication();
        break;
      }
    case "4":
      {
        division();
        break;
      }
    default:
      {
        print("Invalid choice");
        break;
      }
  }
}

int addition() {
  print('Enter a the first num: ');
  int n1 = int.parse(stdin.readLineSync()!);
  print('Enter a the second num: ');
  int n2 = int.parse(stdin.readLineSync()!);
  return n1 + n2;
}

int subtraction() {
  print('Enter a the first num: ');
  int n1 = int.parse(stdin.readLineSync()!);
  print('Enter a the second num: ');
  int n2 = int.parse(stdin.readLineSync()!);
  return n1 - n2;
}

int multiplication() {
  print('Enter a the first num: ');
  int n1 = int.parse(stdin.readLineSync()!);
  print('Enter a the second num: ');
  int n2 = int.parse(stdin.readLineSync()!);
  return n1 * n2;
}

double division() {
  print('Enter a the first num: ');
  int n1 = int.parse(stdin.readLineSync()!);
  print('Enter a the second num: ');
  int n2 = int.parse(stdin.readLineSync()!);
  if (n2 != 0) {
    return n1 / n2;
  } else {
    throw "Division by zero condition";
  }
}
