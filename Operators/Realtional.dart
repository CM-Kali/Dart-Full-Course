

void main() {
  print("⚖️ RELATIONAL OPERATORS IN DART\n");
  
  // ========== BASIC RELATIONAL OPERATORS ==========
  print("=== BASIC RELATIONAL OPERATORS ===");
  
  int a = 10;
  int b = 5;
  int c = 10;
  String name1 = "Alice";
  String name2 = "Bob";
  String name3 = "Alice";
  
  print(" Initial Values:");
  print("a = $a, b = $b, c = $c");
  print("name1 = '$name1', name2 = '$name2', name3 = '$name3'\n");
  
  //  Equal to Operator (==)
  print(" EQUAL TO (==):");
  print("$a == $b: ${a == b}");     // false
  print("$a == $c: ${a == c}");     // true
  print("'$name1' == '$name2': ${name1 == name2}"); // false
  print("'$name1' == '$name3': ${name1 == name3}"); // true
  print("Explanation: Checks if two values are equal\n");
  
  //  Not Equal to Operator (!=)
  print(" NOT EQUAL TO (!=):");
  print("$a != $b: ${a != b}");     // true
  print("$a != $c: ${a != c}");     // false
  print("'$name1' != '$name2': ${name1 != name2}"); // true
  print("Explanation: Checks if two values are NOT equal\n");
  
  // ➢ Greater Than Operator (>)
  print(" GREATER THAN (>):");
  print("$a > $b: ${a > b}");       // true
  print("$b > $a: ${b > a}");       // false
  print("$a > $c: ${a > c}");       // false
  print("Explanation: Checks if left value is greater than right\n");
  
  // Less Than Operator (<)
  print(" LESS THAN (<):");
  print("$a < $b: ${a < b}");       // false
  print("$b < $a: ${b < a}");       // true
  print("$a < $c: ${a < c}");       // false
  print("Explanation: Checks if left value is less than right\n");
  
  // ➢ Greater Than or Equal To Operator (>=)
  print(" GREATER THAN OR EQUAL TO (>=):");
  print("$a >= $b: ${a >= b}");     // true
  print("$b >= $a: ${b >= a}");     // false
  print("$a >= $c: ${a >= c}");     // true
  print("Explanation: Checks if left is greater OR equal to right\n");
  
  //  Less Than or Equal To Operator (<=)
  print(" LESS THAN OR EQUAL TO (<=):");
  print("$a <= $b: ${a <= b}");     // false
  print("$b <= $a: ${b <= a}");     // true
  print("$a <= $c: ${a <= c}");     // true
  print("Explanation: Checks if left is less OR equal to right\n");
  
  // ========== STRING COMPARISON ==========
  print("===  STRING COMPARISON ===");
  
  String text1 = "apple";
  String text2 = "banana";
  String text3 = "Apple"; // Different case
  
  print("String comparisons are case-sensitive:");
  print("'$text1' == '$text2': ${text1 == text2}"); // false
  print("'$text1' == '$text3': ${text1 == text3}"); // false (case difference)
  print("'$text1'.toUpperCase() == '$text3'.toUpperCase(): ${text1.toUpperCase() == text3.toUpperCase()}"); // true
  
  // String alphabetical order comparison
  print("\nAlphabetical order comparison:");
  print("'$text1' < '$text2': ${text1.compareTo(text2) < 0}"); // true (apple comes before banana)
  print("'$text2' > '$text1': ${text2.compareTo(text1) > 0}"); // true (banana comes after apple)\n");
  
  // ========== DIFFERENT DATA TYPE COMPARISONS ==========
  print("===  DIFFERENT DATA TYPE COMPARISONS ===");
  
  // int vs double
  print("INT vs DOUBLE:");
  int integerValue = 10;
  double doubleValue = 10.0;
  print("$integerValue == $doubleValue: ${integerValue == doubleValue}"); // true
  print("$integerValue > 9.5: ${integerValue > 9.5}"); // true
  print("Explanation: Dart can compare int and double values\n");
  
  // Boolean comparisons
  print("BOOLEAN COMPARISONS:");
  bool isTrue = true;
  bool isFalse = false;
  print("isTrue == isFalse: ${isTrue == isFalse}"); // false
  print("isTrue != isFalse: ${isTrue != isFalse}"); // true
  print("isTrue == true: ${isTrue == true}");       // true\n");
  
  // ========== PRACTICAL REAL-WORLD EXAMPLES ==========
  print("===  PRACTICAL REAL-WORLD EXAMPLES ===");
  
  //  Age Verification System
  print(" AGE VERIFICATION SYSTEM:");
  int userAge = 17;
  int votingAge = 18;
  int drivingAge = 16;
  
  print("User Age: $userAge");
  print("Can vote? ($userAge >= $votingAge): ${userAge >= votingAge}");
  print("Can drive? ($userAge >= $drivingAge): ${userAge >= drivingAge}");
  print("Is teenager? ($userAge >= 13 && $userAge <= 19): ${userAge >= 13 && userAge <= 19}\n");
  
  //  Shopping Cart Logic
  print(" SHOPPING CART LOGIC:");
  double cartTotal = 75.50;
  double freeShippingThreshold = 50.0;
  double budget = 100.0;
  
  print("Cart Total: \$$cartTotal");
  print("Free Shipping Available? ($cartTotal >= $freeShippingThreshold): ${cartTotal >= freeShippingThreshold}");
  print("Within Budget? ($cartTotal <= $budget): ${cartTotal <= budget}\n");
  
  //  Game Score System
  print(" GAME SCORE SYSTEM:");
  int playerScore = 850;
  int highScore = 1000;
  int passingScore = 500;
  
  print("Player Score: $playerScore");
  print("New High Score? ($playerScore > $highScore): ${playerScore > highScore}");
  print("Level Passed? ($playerScore >= $passingScore): ${playerScore >= passingScore}");
  print("Below Average? ($playerScore < 750): ${playerScore < 750}\n");
  
  //  Email Validation Example
  print(" EMAIL VALIDATION EXAMPLE:");
  String email = "user@example.com";
  String confirmEmail = "user@example.com";
  int emailLength = email.length;
  
  print("Email: $email");
  print("Emails match? ($email == $confirmEmail): ${email == confirmEmail}");
  print("Valid email length? ($emailLength >= 6 && $emailLength <= 254): ${emailLength >= 6 && emailLength <= 254}\n");
  
  // ========== COMMON MISTAKES & BEST PRACTICES ==========
  print("===  COMMON MISTAKES & BEST PRACTICES ===");
  
  print(" COMMON MISTAKES:");
  print("1. Using '=' instead of '==' for comparison");
  print("2. Forgetting that string comparison is case-sensitive");
  print("3. Comparing incompatible types (like String with int)");
  
  print("\n BEST PRACTICES:");
  print("1. Use parentheses for complex comparisons: (a > b) && (c < d)");
  print("2. Be careful with floating-point comparisons due to precision issues");
  print("3. Use .compareTo() for custom object comparisons");
  print("4. Always test edge cases (equal values, boundary conditions)\n");
  
  // ========== COMPLEX COMPARISONS ==========
  print("===  COMPLEX COMPARISONS ===");
  
  int x = 10, y = 20, z = 15;
  print("Multiple comparisons:");
  print("$x < $y && $y > $z: ${x < y && y > z}");
  print("($x == $z) || ($y > $z): ${(x == z) || (y > z)}");
  print("!($x > $y): ${!(x > y)}");
  
  print("\n RELATIONAL OPERATORS MASTERED!");
}