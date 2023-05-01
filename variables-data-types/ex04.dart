/*  Write a program that converts temperatures from Celsius to Fahrenheit. Ask the user for a temperature in Celsius, store the value in a variable, convert it to Fahrenheit, and print the result to the console. */

import 'dart:io';

void main() {
  stdout.write('Enter a temperature in Celsius: ');
  double celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = celsius * 9 / 5 + 32;
  print('$celsius degrees Celsius is $fahrenheit degrees Fahrenheit.');
}
