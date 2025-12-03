/**
 * ASSIGNMENT OPERATORS IN DART
 * 
 * Assignment operators are used to assign values to variables
 * and modify variables with arithmetic operations
 */

void main() {
  print("ASSIGNMENT OPERATORS IN DART\n");
  
  // ========== BASIC ASSIGNMENT OPERATOR ==========
  print("=== BASIC ASSIGNMENT OPERATOR (=) ===");
  
  // Simple assignment
  int age = 25;
  String name = "John Doe";
  double price = 19.99;
  
  print("Simple Variable Assignment:");
  print("int age = 25;        -> age = $age");
  print("String name = 'John Doe'; -> name = '$name'");
  print("double price = 19.99; -> price = $price\n");
  
  // Multiple assignment
  print("Multiple Variable Assignment:");
  int x, y, z;
  x = y = z = 100; // All variables get value 100
  print("x = y = z = 100;");
  print("x = $x, y = $y, z = $z\n");
  
  // ========== COMPOUND ASSIGNMENT OPERATORS ==========
  print("=== COMPOUND ASSIGNMENT OPERATORS ===");
  print("Combine arithmetic operation with assignment\n");
  
  // += Addition Assignment
  print("ADDITION ASSIGNMENT (+=):");
  int counter = 5;
  print("Initial: counter = $counter");
  counter += 3; // Equivalent to: counter = counter + 3
  print("After counter += 3: counter = $counter");
  
  double total = 100.0;
  total += 25.5;
  print("After total += 25.5: total = $total\n");
  
  // -= Subtraction Assignment
  print("SUBTRACTION ASSIGNMENT (-=):");
  int points = 50;
  print("Initial: points = $points");
  points -= 15; // Equivalent to: points = points - 15
  print("After points -= 15: points = $points");
  
  double balance = 75.25;
  balance -= 20.0;
  print("After balance -= 20.0: balance = $balance\n");
  
  // *= Multiplication Assignment
  print("MULTIPLICATION ASSIGNMENT (*=):");
  int quantity = 4;
  print("Initial: quantity = $quantity");
  quantity *= 3; // Equivalent to: quantity = quantity * 3
  print("After quantity *= 3: quantity = $quantity");
  
  double investment = 1000.0;
  investment *= 1.05; // 5% increase
  print("After investment *= 1.05: investment = $investment\n");
  
  // /= Division Assignment
  print("DIVISION ASSIGNMENT (/=):");
  double pizza = 1.0;
  print("Initial: pizza = $pizza");
  pizza /= 2; // Equivalent to: pizza = pizza / 2
  print("After pizza /= 2: pizza = $pizza (half pizza)");
  
  double totalAmount = 100.0;
  totalAmount /= 4; // Divide among 4 people
  print("After totalAmount /= 4: totalAmount = $totalAmount\n");
  
  // ~/= Integer Division Assignment
  print("INTEGER DIVISION ASSIGNMENT (~/=):");
  int apples = 10;
  print("Initial: apples = $apples");
  apples ~/= 3; // Equivalent to: apples = apples ~/ 3
  print("After apples ~/= 3: apples = $apples (whole apples per person)");
  
  int students = 25;
  students ~/= 5; // Groups of 5 students
  print("After students ~/= 5: students = $students (number of groups)\n");
  
  // %= Modulus Assignment
  print("MODULUS ASSIGNMENT (%=):");
  int items = 17;
  print("Initial: items = $items");
  items %= 5; // Equivalent to: items = items % 5
  print("After items %= 5: items = $items (remaining items)");
  
  int seconds = 125;
  seconds %= 60; // Remaining seconds after minutes
  print("After seconds %= 60: seconds = $seconds (seconds part)\n");
  
  // ========== NULL-AWARE ASSIGNMENT OPERATORS ==========
  print("=== NULL-AWARE ASSIGNMENT OPERATORS ===");
  
  // ??= Null-aware assignment
  print("NULL-AWARE ASSIGNMENT (??=):");
  print("Assigns value only if variable is null\n");
  
  int? nullableValue;
  int nonNullableValue = 10;
  
  print("Initial values:");
  print("nullableValue = $nullableValue");
  print("nonNullableValue = $nonNullableValue");
  
  // ??= only assigns if the variable is null
  nullableValue ??= 100;
 // nonNullableValue ??= 200; // Won't execute because nonNullableValue is not null
  
  print("After ??= operations:");
  print("nullableValue ??= 100: $nullableValue");
  print("nonNullableValue ??= 200: $nonNullableValue (unchanged)\n");
  
  // Practical null-aware example
  print("USER PROFILE EXAMPLE:");
  String? username;
  String defaultUsername = "Guest";
  
  print("Initial username: $username");
  username ??= defaultUsername;
  print("After username ??= defaultUsername: $username");
  
  //username ??= "AnotherGuest"; // Won't change because username is no longer null
  print("After username ??= 'AnotherGuest': $username (unchanged)\n");
  
  // ========== STRING ASSIGNMENT OPERATORS ==========
  print("=== STRING ASSIGNMENT OPERATORS ===");
  
  // += with strings (concatenation)
  print("STRING CONCATENATION ASSIGNMENT (+=):");
  String message = "Hello";
  print("Initial: message = '$message'");
  message += " World"; // Equivalent to: message = message + " World"
  print("After message += ' World': '$message'");
  
  String html = "<div>";
  html += "<p>Welcome</p>";
  html += "</div>";
  print("After multiple += operations: '$html'\n");
  
  // ========== PRACTICAL REAL-WORLD EXAMPLES ==========
  print("=== PRACTICAL REAL-WORLD EXAMPLES ===");
  
  // Shopping Cart Example
  print("SHOPPING CART SYSTEM:");
  double cartTotal = 0.0;
  print("Initial cart total: \$$cartTotal");
  
  cartTotal += 29.99; // Add item 1
  cartTotal += 15.50; // Add item 2
  cartTotal += 8.75;  // Add item 3
  print("After adding 3 items: \$$cartTotal");
  
  cartTotal -= 5.00;  // Apply discount
  print("After \$5.00 discount: \$$cartTotal");
  
  cartTotal *= 1.08;  // Add 8% tax
  print("After 8% tax: \$${cartTotal.toStringAsFixed(2)}\n");
  
  // Game Character Stats
  print("GAME CHARACTER STATS:");
  int health = 100;
  int score = 0;
  int level = 1;
  
  print("Initial - Health: $health, Score: $score, Level: $level");
  
  // Game events
  health -= 25;       // Took damage
  score += 100;       // Defeated enemy
  score *= 2;         // Double score bonus
  level += 1;         // Level up
  
  print("After game events:");
  print("Health: $health, Score: $score, Level: $level\n");
  
  // Data Processing Example
  print("DATA PROCESSING:");
  int totalNumbers = 0;
  int sum = 0;
  double average = 0.0;
  
  List<int> numbers = [10, 20, 30, 40, 50];
  
  for (int number in numbers) {
    totalNumbers += 1;    // Count numbers
    sum += number;        // Accumulate sum
  }
  
  average = sum / totalNumbers;
  
  print("Numbers: $numbers");
  print("Total numbers: $totalNumbers");
  print("Sum: $sum");
  print("Average: $average\n");
  
  // ========== TYPE-SPECIFIC ASSIGNMENT OPERATIONS ==========
  print("=== TYPE-SPECIFIC ASSIGNMENT OPERATIONS ===");
  
  // List assignment operations
  print("LIST OPERATIONS:");
  List<String> fruits = ['apple'];
  print("Initial fruits: $fruits");
  fruits.add('banana'); // Using add method instead of += for lists
  print("After fruits.add('banana'): $fruits");
  fruits.addAll(['orange', 'grape']);
  print("After fruits.addAll(['orange', 'grape']): $fruits\n");
  

  
  // ========== ADVANCED ASSIGNMENT PATTERNS ==========
  print("=== ADVANCED ASSIGNMENT PATTERNS ===");
  
  // Swap values without temporary variable
  print("VALUE SWAPPING:");
  int a = 5, b = 10;
  print("Before swap: a = $a, b = $b");
  
  a += b;      // a becomes 15
  b = a - b;   // b becomes 5 (original a)
  a -= b;      // a becomes 10 (original b)
  
  print("After swap: a = $a, b = $b\n");
  
  print("ASSIGNMENT OPERATORS MASTERED!");
}