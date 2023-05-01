/* Create a program that simulates a shopping cart. Ask the user to enter the name and price of each item they want to purchase, and store the information in separate variables. Add up the prices of all the items and print the total to the console. */
import 'dart:io';

void main() {
  List<String> items = [];
  List<double> prices = [];

  // Ask the user to enter the items and prices
  while (true) {
    stdout.write('Enter an item (or "done" to exit): ');
    String input = stdin.readLineSync()!;
    if (input == 'done') {
      break;
    }
    items.add(input);

    stdout.write('Enter the price: ');
    double price = double.parse(stdin.readLineSync()!);
    prices.add(price);
  }

  // Print the items and prices
  print('\nShopping cart:');
  for (int i = 0; i < items.length; i++) {
    print('${items[i]} \t \$${prices[i]}');
  }

  // Calculate and print the total price
  double totalPrice = prices.fold(0, (previousValue, price) => previousValue + price);
  print('\nTotal price: \$${totalPrice.toStringAsFixed(2)}');
}

