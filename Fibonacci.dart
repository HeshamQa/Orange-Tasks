import 'dart:io';

int fibonacciCalc(int Nth) {
  if (Nth <= 0)
    return 0;
  else if (Nth == 1)
    return 1;
  else
    return fibonacciCalc(Nth - 1) + fibonacciCalc(Nth - 2);
}

void main() {
  print("Enter the Nth Fibonacci to calculate: ");
  String? n = stdin.readLineSync();
  int NthNumber = int.parse(n!);
  int result = fibonacciCalc(NthNumber);
  stdout.writeln('The $NthNumber number in the Fibonacci sequence is: $result');
}
