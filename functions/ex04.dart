/* Write a function that takes a string as an argument and returns true if the string is a palindrome (i.e. reads the same backwards as forwards), and false otherwise. */

void main() {
  print(isPalindrome('racecar'));
}

bool isPalindrome(String word) {
  var reversed = '';
  for (var i = word.length - 1; i >= 0; i--) {
    reversed += word[i];
  }
  return reversed == word;
}
