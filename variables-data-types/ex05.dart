/* Create a program that generates a random number between 1 and 100. Store the number in a variable and print it to the console.
 */

import 'dart:math';

void main() {
  var random = Random();
  var randomNumber = random.nextInt(100) + 1;
  print(randomNumber);
}
