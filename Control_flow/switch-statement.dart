import 'dart:io';

void main() {
  print("=======================================================");
  print("         SWITCH STATEMENTS IN DART (FULL PROGRAM)       ");
  print("=======================================================\n");

  // =============================================================
  // 1. DAY SELECTION USING SWITCH
  // =============================================================
  print("1. DAY SELECTION PROGRAM");
  print("---------------------------------------------");
  print("Enter a number from 1 to 7 to find the day of the week.");

  stdout.write("Enter number: ");
  int? day = int.tryParse(stdin.readLineSync() ?? "");

  switch (day) {
    case 1:
      print("Today is Monday");
      break;
    case 2:
      print("Today is Tuesday");
      break;
    case 3:
      print("Today is Wednesday");
      break;
    case 4:
      print("Today is Thursday");
      break;
    case 5:
      print("Today is Friday");
      break;
    case 6:
      print("Today is Saturday");
      break;
    case 7:
      print("Today is Sunday");
      break;
    default:
      print("Invalid input. Please enter a number between 1 and 7.");
  }

  print("\n-------------------------------------------------------\n");

  // =============================================================
  // 2. GRADE SYSTEM USING SWITCH
  // =============================================================
  print("2. GRADE CHECKING PROGRAM");
  print("---------------------------------------------");
  print("Enter your grade (A, B, C, D, F).");

  stdout.write("Enter Grade: ");
  String grade = (stdin.readLineSync() ?? "").toUpperCase();

  switch (grade) {
    case 'A':
      print("Excellent Performance");
      break;
    case 'B':
      print("Very Good Performance");
      break;
    case 'C':
      print("Good Performance");
      break;
    case 'D':
      print("Satisfactory Performance");
      break;
    case 'F':
      print("Failed");
      break;
    default:
      print("Invalid grade entered");
  }

  print("\n-------------------------------------------------------\n");

  // =============================================================
  // 3. SIMPLE CALCULATOR USING SWITCH
  // =============================================================
  print("3. SIMPLE CALCULATOR PROGRAM");
  print("---------------------------------------------");

  stdout.write("Enter first number: ");
  double num1 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Enter second number: ");
  double num2 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  print("Choose an operator: +   -   *   /");
  stdout.write("Enter operator: ");
  String operator = stdin.readLineSync() ?? "";

  switch (operator) {
    case '+':
      print("Result = ${num1 + num2}");
      break;
    case '-':
      print("Result = ${num1 - num2}");
      break;
    case '*':
      print("Result = ${num1 * num2}");
      break;
    case '/':
      if (num2 == 0) {
        print("Error: Division by zero is not allowed.");
      } else {
        print("Result = ${num1 / num2}");
      }
      break;
    default:
      print("Invalid operator. Please use +, -, *, / only.");
  }

  print("\n-------------------------------------------------------\n");

  // =============================================================
  // 4. SEASON FINDER USING MULTIPLE CASES
  // =============================================================
  print("4. SEASON FINDER PROGRAM");
  print("---------------------------------------------");
  print("Enter the name of a month to find its season.");

  stdout.write("Enter month: ");
  String month = (stdin.readLineSync() ?? "").toLowerCase();

  switch (month) {
    case 'december':
    case 'january':
    case 'february':
      print("Season: Winter");
      break;

    case 'march':
    case 'april':
    case 'may':
      print("Season: Spring");
      break;

    case 'june':
    case 'july':
    case 'august':
      print("Season: Summer");
      break;

    case 'september':
    case 'october':
    case 'november':
      print("Season: Autumn");
      break;

    default:
      print("Invalid month name entered.");
  }

  print("\n-------------------------------------------------------\n");

  // =============================================================
  // 5. RESTAURANT MENU USING SWITCH
  // =============================================================
  print("5. RESTAURANT MENU SYSTEM");
  print("---------------------------------------------");
  print("1. Pizza");
  print("2. Burger");
  print("3. Pasta");
  print("4. Salad");

  stdout.write("Enter your choice (1-4): ");
  int? menu = int.tryParse(stdin.readLineSync() ?? "");

  switch (menu) {
    case 1:
      print("You selected: Pizza");
      print("Price: 1200");
      break;
    case 2:
      print("You selected: Burger");
      print("Price: 900");
      break;
    case 3:
      print("You selected: Pasta");
      print("Price: 1100");
      break;
    case 4:
      print("You selected: Salad");
      print("Price: 700");
      break;
    default:
      print("Invalid choice. Please select from 1 to 4.");
  }

  print("\n-------------------------------------------------------\n");

  // =============================================================
  // 6. AUTHENTICATION ROLE SYSTEM
  // =============================================================
  print("6. AUTHENTICATION ROLE SYSTEM");
  print("---------------------------------------------");
  print("Login roles: admin, user, guest");

  stdout.write("Enter your role: ");
  String role = (stdin.readLineSync() ?? "").toLowerCase();

  switch (role) {
    case 'admin':
      print("Access Level: Full Control");
      break;

    case 'user':
      print("Access Level: Limited Control");
      break;

    case 'guest':
      print("Access Level: Read Only");
      break;

    default:
      print("Invalid role entered.");
  }

  print("\n-------------------------------------------------------\n");

  // =============================================================
  // 7. MODERN SWITCH EXPRESSION (DART 3)
  // =============================================================
  print("7. MODERN SWITCH EXPRESSION (DART 3)");
  print("---------------------------------------------");

  stdout.write("Enter a fruit name: ");
  String fruit = (stdin.readLineSync() ?? "").toLowerCase();

  String category = switch (fruit) {
    'apple' => 'Category: Red Fruits',
    'banana' => 'Category: Yellow Fruits',
    'grape' => 'Category: Purple Fruits',
    'mango' => 'Category: Tropical Fruits',
    _ => 'Category: Unknown Fruit'
  };

  print(category);

  print("\n=======================================================");
  print("                 END OF FULL PROGRAM                   ");
  print("=======================================================\n");
}
