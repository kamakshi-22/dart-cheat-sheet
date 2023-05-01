/* Write a function that takes a list of strings as an argument and returns a new list containing only the strings that start with the letter "A". */

void main() {
  print(startsWithA(['Apple', 'Banana', 'Avocado', 'Pineapple']));
}

List<String> startsWithA(List<String> words) {
  var aWords = <String>[];
  for (var word in words) {
    if (word.startsWith('A')) {
      aWords.add(word);
    }
  }
  return aWords;
}
