/*  Write a program that calculates the area of a rectangle. Ask the user for the length and width of the rectangle, store the values in variables, calculate the area, and print the result to the console.*/

import 'dart:io';


void main() {
  stdout.write('Enter rectangle\'s length: ');
  int length = int.parse(stdin.readLineSync()!);

  stdout.write('Enter rectangle\'s width: ');
  int width = int.parse(stdin.readLineSync()!);

  int area = length * width;

  print('The area of the rectangle is $area');
}
