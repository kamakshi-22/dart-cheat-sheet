
/* Create a program that asks the user for their name, age, and favorite color. Store each piece of information in a variable and print it out to the console. */

import 'dart:io';

void main() {
  // Ask the user for their name
  stdout.write('Enter your name: ');
  String name = stdin.readLineSync()!;

  // Ask the user for their age
  stdout.write('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);

  // Ask the user for their favorite color
  stdout.write('Enter your favorite color: ');
  String favoriteColor = stdin.readLineSync()!;

  // Print the user's information to the console
  print('Name: $name');
  print('Age: $age');
  print('Favorite color: $favoriteColor');
}
