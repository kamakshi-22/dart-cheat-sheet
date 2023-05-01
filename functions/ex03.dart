/* Write a function that takes a list of integers as an argument and returns the maximum value in the list. */

void main() {
  print(max([1, 2, 3, 4, 5]));
}

int max(List<int> numbers) {
  var max = numbers[0];
  for (var i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  return max;
}
