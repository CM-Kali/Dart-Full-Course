

import 'dart:io';

void main() {
  print("---------- PRINT ----------");

  // Simple print
  print("Hello CMADEEL!");

  // Printing variables
  String name = "CMADEEL";
  int age = 21;
  print("Name: $name, Age: $age");

  // String interpolation
  print("Welcome $name! Next year, you will be ${age + 1} years old.");

  // Multi-line print
  print("""
This is a multi-line
print example
using triple quotes.
""");

  print("\n---------- USER INPUT ----------");

  // Input as String
  stdout.write("Enter your name: "); // stdout.write does not add new line
  String? inputName = stdin.readLineSync();
  print("Hello, $inputName!");

  // Input as integer
  stdout.write("Enter your age: ");
  String? ageInput = stdin.readLineSync();
  int ageNum = int.parse(ageInput!); // convert String to int
  print("You are $ageNum years old.");

  // Input as double
  stdout.write("Enter your height (in meters, e.g., 5.9): ");
  String? heightInput = stdin.readLineSync();
  double height = double.parse(heightInput!);
  print("Your height is $height meters.");

  print("\n---------- FORMATTING OUTPUT ----------");

  // Formatting numbers
  double pi = 3.14159265;
  print("PI up to 2 decimal places: ${pi.toStringAsFixed(2)}");

  // Combining input and output
  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double sum = num1 + num2;
  print("Sum of $num1 and $num2 is $sum");
}
