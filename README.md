# dart-cheat-sheet

### **MAIN FUNCTION**

```dart
void main() {
  print('Hello, World!');
}
```

### **VARIABLES**

```dart
// Variables can be declared using the var or type name syntax

var age = 25; // inferred int created with var
int count = 0; // explicit int declaration
double pi = 3.14; // double
num value = 42; // generic numeric type
String name = 'Alice'; // single quotes
String message = "Hello, $name!"; // double quotes with string interpolation
bool isRaining = true; // booleans are declared using the bool keyword
dynamic dynamicVar = 'hello'; // dynamic type can hold any value and its type determined at runtime
final companyName = 'Acme Inc.'; // final keyword creates a variable that can be set only once
const PI = 3.14159; // const keyword creates a compile-time constant
```

### **OPERATORS**

```dart
// Arithmetic operators
var sum = 10 + 20; // addition
var difference = 40 - 30; // subtraction
var product = 2 * 5; // multiplication
var quotient = 15 / 3; // division
var remainder = 20 % 3; // modulus

// Comparison operators
var isEqual = (5 == 5); // equality
var notEqual = (5 != 6); // inequality
var greaterThan = (5 > 3); // greater than
var lessThan = (5 < 7); // less than
var greaterOrEqual = (5 >= 5); // greater than or equal to
var lessOrEqual = (5 <= 5); // less than or equal to

// Logical operators
var and = true && false; // logical and
var or = true || false; // logical or
var not = !true; // logical not

// Assignment operators
var x = 10; // simple assignment
x += 5; // addition assignment (same as x = x + 5)
x -= 2; // subtraction assignment (same as x = x - 2)
x *= 3; // multiplication assignment (same as x = x * 3)
x /= 2; // division assignment (same as x = x / 2)
x %= 4; // modulus assignment (same as x = x % 4)

// Conditional operator
var isEven = (x % 2 == 0) ? true : false; // if-else shorthand
```

### **COMMENTS**

```dart
// Single-line comments start with //
// This is a single-line comment

// Multi-line comments start with /* and end with */
/*
This is a multi-line comment
It can span multiple lines
*/

// Documentation comments are used to generate documentation for libraries, classes, functions, and variables
/// This is a documentation comment for a class.
/// It should describe what the class does and its properties and methods.
class MyClass {
  int myProperty;
  
  /// This is a documentation comment for a method.
  /// It should describe what the method does and its parameters.
  void myMethod(int param) {
    // method code here
  }
}
```

### **METADATA**

```dart
// Metadata provides additional information about the code to tools and other programs

// Metadata provides additional information about the code to tools and other programs

// Metadata can be added to classes, methods, variables, and parameters using the @ symbol

// Common metadata includes:
// - @deprecated: indicates that a method or variable is no longer recommended for use
// - @override: indicates that a method is intended to override a method from a superclass or interface
// - @immutable: indicates that a class or property is read-only
// - @proxy: indicates that a class should be treated as a dynamic proxy

@deprecated
void myDeprecatedFunction() {
  // deprecated function code here
}

class MyClass {
  @override
  void myMethod() {
    // method code here
  }
}

@immutable
class MyImmutableClass {
  final int myProperty;
  
  const MyImmutableClass(this.myProperty);
}

@proxy
class MyDynamicClass {
  // proxy code here
}

```

### **LIBRARIES & IMPORTS**

```dart
// Dart code is organized into libraries, which are collections of related code

// Libraries are defined using the 'library' keyword, followed by the name of the library

library my_library;

// Code from other libraries can be accessed using the 'import' keyword

import 'dart:math'; // import a core Dart library
import 'package:flutter/material.dart'; // import a package from pub.dev

// The 'as' keyword can be used to give an imported library a different name
import 'package:flutter/cupertino.dart' as cupertino;

// The 'show' and 'hide' keywords can be used to selectively import or hide parts of a library
import 'package:my_package/my_module.dart' show myFunction;
import 'package:my_package/my_module.dart' hide myPrivateFunction;

// Code can also be exported from a library using the 'export' keyword
export 'my_other_library.dart';

// Libraries can have a part directive to include source code from other files
part 'my_file.dart';

```

### **TYPES**

* **built-in types**

  ```dart
  // Dart has built-in types for numbers, strings, and booleans

  // Numbers can be declared as integers or doubles
  int age = 42; // integer
  double pi = 3.14; // double

  // Strings can be declared using single or double quotes
  String name = 'Alice'; // single quotes
  String message = "Hello, $name!"; // double quotes with string interpolation

  // Booleans are declared using the 'bool' keyword
  bool isRaining = true;

  // Methods for numbers:
  age.toString(); // convert to string
  pi.round(); // round to nearest integer
  pi.floor(); // round down to integer
  pi.ceil(); // round up to integer

  // Methods for strings:
  name.length; // get length
  name.toUpperCase(); // convert to uppercase
  message.contains('Alice'); // check if contains substring
  message.replaceAll('Alice', 'Bob'); // replace substring

  // Methods for booleans:
  isRaining.toString(); // convert to string
  !isRaining; // logical NOT
  isRaining && isCold; // logical AND
  isRaining || isSunny; // logical OR

  ```
* **collections**

  ```dart
  // Dart has built-in types for lists, sets, and maps

  // Lists can be declared using square brackets
  List<int> numbers = [1, 2, 3, 4, 5];

  // Sets can be declared using curly braces
  Set<String> fruits = {'apple', 'banana', 'cherry'};

  // Maps can be declared using curly braces with key-value pairs
  Map<String, int> ages = {'Alice': 42, 'Bob': 37};

  // Methods for lists:
  numbers.length; // get length
  numbers[2]; // access element at index
  numbers.indexOf(3); // find index of element
  numbers.add(6); // add element to end
  numbers.remove(4); // remove element
  numbers.forEach((number) => print(number)); // iterate over elements

  // Methods for sets:
  fruits.length; // get length
  fruits.contains('banana'); // check if contains element
  fruits.add('date'); // add element
  fruits.remove('apple'); // remove element
  fruits.forEach((fruit) => print(fruit)); // iterate over elements

  // Methods for maps:
  ages.length; // get length
  ages['Alice']; // access value with key
  ages.containsKey('Charlie'); // check if contains key
  ages.putIfAbsent('Charlie', () => 30); // add key-value pair if absent
  ages.remove('Bob'); // remove key-value pair
  ages.forEach((key, value) => print('$key is $value years old')); // iterate over key-value pairs

  ```
* **operators**

  ```dart
  // Dart has operators and control flow statements for working with collections

  // Spread operator
  var numbers = [1, 2, 3];
  var moreNumbers = [0, ...numbers]; // spread operator inserts contents of numbers into moreNumbers

  // For loops
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]); // prints each element in numbers
  }

  // For-in loops
  for (var number in numbers) {
    print(number); // prints each element in numbers
  }

  // forEach method
  numbers.forEach((number) => print(number)); // prints each element in numbers using a lambda function

  // Map method
  var doubledNumbers = numbers.map((number) => number * 2); // creates a new list with each element in numbers multiplied by 2

  // Where method
  var evenNumbers = numbers.where((number) => number % 2 == 0); // creates a new list with only the even elements in numbers

  // Reduce method
  var sum = numbers.reduce((value, element) => value + element); // computes the sum of all elements in numbers

  // Conditional expressions
  var age = 21;
  var isLegal = age >= 18 ? 'Legal' : 'Illegal'; // ternary operator - sets isLegal to 'Legal' if age is greater than or equal to 18, and 'Illegal' otherwise

  ```
* **generics**

  ```dart
  // Dart supports generics for creating reusable code

  // Generic classes
  class Box<T> {
    T item;

    Box(this.item);

    T getItem() => item;
  }

  // Generic methods
  T getFirst<T>(List<T> items) => items[0];

  // Usage examples
  var intBox = Box<int>(10); // creates a Box that can hold integers
  var stringBox = Box<String>('hello'); // creates a Box that can hold strings

  var numbers = [1, 2, 3];
  var firstNumber = getFirst(numbers); // gets the first number in the list

  ```
* **typedef**

  ```dart
  // Dart supports typedefs for defining function types

  // Defining a typedef for a function type
  typedef bool Filter(int number);

  // Example of a function that takes a function type as a parameter
  List<int> filterList(List<int> list, Filter filter) {
    return list.where((number) => filter(number)).toList();
  }

  // Usage examples
  bool isEven(int number) => number % 2 == 0;
  bool isOdd(int number) => number % 2 == 1;

  var numbers = [1, 2, 3, 4, 5];
  var evenNumbers = filterList(numbers, isEven); // filters even numbers from the list
  var oddNumbers = filterList(numbers, isOdd); // filters odd numbers from the list

  ```

### **CONTROL FLOW**

* **if-else Statements**

  ```dart
  // The if-else statement is used to execute code based on a condition

  if (condition) {
    // code to execute if the condition is true
  } else {
    // code to execute if the condition is false
  }
  ```
* **for loops**

  ```dart
  // The for loop is used to execute code repeatedly for a specific number of times

  for (var i = 0; i < 10; i++) {
    // code to execute on each iteration
  }
  ```
* **while loops**

  ```dart
  // The while loop is used to execute code repeatedly while a condition is true

  while (condition) {
    // code to execute while the condition is true
  }
  ```
* **do-while loops**

  ```dart
  // The do-while loop is used to execute code repeatedly at least once, and then as long as a condition is true

  do {
    // code to execute at least once
  } while (condition);
  ```
* **switch statements**

  ```dart
  // The switch statement is used to execute different code blocks based on different conditions

  switch (variable) {
    case value1:
      // code to execute if variable equals value1
      break;
    case value2:
      // code to execute if variable equals value2
      break;
    default:
      // code to execute if variable does not equal any of the cases
      break;
  }
  ```

**ERROR HANDLING**

```dart
// Dart provides several ways to handle errors and exceptions

// Using try-catch blocks to handle exceptions
try {
  var result = 42 ~/ 0; // throws an IntegerDivisionByZeroException
} catch (e) {
  print("An exception occurred: $e"); // prints "An exception occurred: IntegerDivisionByZeroException"
}

// Using on clauses to handle specific exceptions
try {
  var result = 42 ~/ 0; // throws an IntegerDivisionByZeroException
} on IntegerDivisionByZeroException {
  print("Cannot divide by zero");
}

// Using finally clauses to execute code after try-catch blocks
try {
  var result = 42 ~/ 0; // throws an IntegerDivisionByZeroException
} catch (e) {
  print("An exception occurred: $e");
} finally {
  print("This code always runs");
}

// Using rethrow to propagate an exception to the calling function
void riskyFunction() {
  try {
    var result = 42 ~/ 0; // throws an IntegerDivisionByZeroException
  } catch (e) {
    // rethrows the exception to the calling function
    rethrow;
  }
}

// Using assert statements to check for errors during development
void printNumber(int number) {
  assert(number >= 0, "The number must be greater than or equal to zero");
  print(number);
}

```

### **CLASSES & OBJECTS**

```dart
// Dart is an object-oriented language, and classes are a fundamental building block

// Defining a class
class Person {
  String name;
  int age;

  // A constructor with named parameters
  Person({required this.name, required this.age});

  // A named constructor
  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  // A method that returns a string
  String greet() {
    return "Hello, my name is $name and I am $age years old";
  }
}

// Inheriting from a class
class Employee extends Person {
  String department;

  // A constructor that calls the super constructor
  Employee({required String name, required int age, required this.department})
      : super(name: name, age: age);

  // Overriding a method from the parent class
  @override
  String greet() {
    return "Hello, my name is $name, I am $age years old, and I work in $department";
  }
}

// Creating objects from classes
var person = Person(name: "Alice", age: 25);
var employee = Employee(name: "Bob", age: 30, department: "Sales");

// Calling methods on objects
print(person.greet()); // prints "Hello, my name is Alice and I am 25 years old"
print(employee.greet()); // prints "Hello, my name is Bob, I am 30 years old, and I work in Sales"

```

### **EXTENSION**

```dart
// Define a class to be extended
class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  String greet() {
    return "Hello, my name is $name and I am $age years old";
  }
}

// Define an extension to add a new method to Person
extension on Person {
  String introduce(String city) {
    return "Hi, my name is $name and I am from $city";
  }
}

void main() {
  var person = Person(name: "Alice", age: 25);
  print(person.introduce("New York")); // prints "Hi, my name is Alice and I am from New York"
}

```

### **ENUM**

```dart
// An enum is a special kind of class used to represent a fixed number of values

enum Flavor {
  vanilla,
  chocolate,
  strawberry,
  mint,
}

// Enums can have properties and methods just like classes
extension FlavorExtensions on Flavor {
  String get name {
    return this.toString().split('.').last;
  }

  bool get isSweet {
    switch (this) {
      case Flavor.vanilla:
      case Flavor.chocolate:
        return true;
      case Flavor.strawberry:
      case Flavor.mint:
        return false;
    }
  }
}

// Enums can be used like any other type in Dart
void printFlavorInfo(Flavor flavor) {
  print("The flavor is ${flavor.name}");
  print("Is it sweet? ${flavor.isSweet}");
}

// Example usage
void main() {
  var myFlavor = Flavor.chocolate;
  printFlavorInfo(myFlavor);
}

```

### MIXIN

```dart
// A mixin is a way to reuse a class's code in multiple class hierarchies

// Defining a mixin
mixin Dancer {
void dance() {
print("Dancing...");
}
}

// Defining a class that uses the mixin
class Person with Dancer {
String name;
int age;

// A constructor with named parameters
Person({required this.name, required this.age});

// A method that returns a string
String greet() {
return "Hello, my name is $name and I am $age years old";
}
}

// Creating an object from the class
var person = Person(name: "Alice", age: 25);

// Calling a method on the object that was defined in the mixin
person.dance(); // prints "Dancing..."
```

### **CALLABLE CLASSES**

```dart
// A callable class is one that can be invoked as a function
class Greeting {
  String message;
  
  // The constructor sets the message property
  Greeting(this.message);
  
  // The call() method allows instances of this class to be called as functions
  String call(String name) {
    return "$message, $name!";
  }
}

// Example usage
void main() {
  var hello = Greeting("Hello");
  var goodbye = Greeting("Goodbye");
  
  // Invoke the objects as functions
  print(hello("Alice")); // prints "Hello, Alice!"
  print(goodbye("Bob")); // prints "Goodbye, Bob!"
}

```

### NULL SAFETY

```dart
void main() {
  // Declaring nullable variables with the "?" operator
  String? name;
  int? age;

  // Attempting to assign null to non-nullable variables causes an error
  // String name;
  // int age;

  // Using the "!" operator to assert that a nullable variable is not null
  name = "Alice";
  age = 25;
  print("Hello, my name is ${name!} and I am ${age!} years old");

  // Using the "?? " operator to provide a default value for a nullable variable
  String? jobTitle;
  String message = "Hello";
  message += jobTitle ?? "there";
  print(message);

  // Using the "late" keyword to indicate that a non-nullable variable will be assigned later
  late String favoriteColor;
  favoriteColor = "blue";
  print("My favorite color is $favoriteColor");

  // Using the "required" keyword in constructors to indicate non-nullability
  final person = Person(name: "Bob", age: 30);
  print("Hello, my name is ${person.name} and I am ${person.age} years old");
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}

```

### **ASYNCHRONOUS PROGRAMMING**

* future : object that represents a value that may not be available yet.

  ```dart
  void main() {
    // Creating a Future object that resolves to a value after a delay
    Future<String> delayedHello(int seconds) {
      return Future.delayed(Duration(seconds: seconds), () => "Hello");
    }

    // Using a Future to execute code asynchronously
    print("Before the Future");
    delayedHello(2).then((value) => print(value));
    print("After the Future");
  }

  // prints :
  // Before the future
  // After the future
  // Hello, world!
  ```
* async & await : makes working with `future` more convenient.

  ```dart
  void main() async {
    // Using the "async" keyword to mark a function as asynchronous
    Future<String> delayedHello(int seconds) {
      return Future.delayed(Duration(seconds: seconds), () => "Hello");
    }

    // Using "await" to wait for a Future to complete before continuing execution
    print("Before the Future");
    String value = await delayedHello(2);
    print(value);
    print("After the Future");
  }

  // prints :
  // Before the future
  // After the future
  // Hello, world!
  ```

- the `async` keyword is used to mark the `main` function as an asynchronous function, and the `await` keyword is used to pause the execution of the function until the `delayedHello()` Future has completed.
- This allows the code to be written in a more synchronous style, where each line of code is executed one after the other, without blocking the event loop.
