int Power(int x) {
  int inner = x;
  int PowerInner() {
    return x * inner;
  }

  return PowerInner();
}

void main() {
  print(Power(2)); // Output: 4
}
