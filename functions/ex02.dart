/* Write a function that takes an integer as an argument and returns true if the integer is even, and false otherwise. */

void main() {
  print(isEven(2));
  print(isEven(3));
}

bool isEven(int a) {
  return a % 2 == 0;
}
