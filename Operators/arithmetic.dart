

void main() {
  print(" ARITHMETIC OPERATORS IN DART\n");
  
  // ========== BASIC ARITHMETIC OPERATIONS ==========
  print("=== BASIC ARITHMETIC OPERATIONS ===");
  
  int number1 = 15;
  int number2 = 4;
  double decimalNumber = 7.5;
  
  print(" Initial Values:");
  print("number1 = $number1");
  print("number2 = $number2"); 
  print("decimalNumber = $decimalNumber\n");
  
  //  Addition Operator
  print(" ADDITION:");
  int sum = number1 + number2;
  print("$number1 + $number2 = $sum");
  print("Explanation: Adds two numbers together\n");
  
  //  Subtraction Operator  
  print("SUBTRACTION:");
  int difference = number1 - number2;
  print("$number1 - $number2 = $difference");
  print("Explanation: Subtracts second number from first\n");
  
  //  Multiplication Operator
  print(" MULTIPLICATION:");
  int product = number1 * number2;
  print("$number1 * $number2 = $product");
  print("Explanation: Multiplies two numbers\n");
  
  //  Division Operator
  print(" DIVISION:");
  double quotient = number1 / number2;
  print("$number1 / $number2 = $quotient");
  print("Important: Division always returns double in Dart\n");
  
  //  Integer Division Operator
  print(" INTEGER DIVISION:");
  int integerQuotient = number1 ~/ number2;
  print("$number1 ~/ $number2 = $integerQuotient");
  print("Explanation: Returns integer part of division (truncates decimal)\n");
  
  //  Modulus Operator
  print(" MODULUS (REMAINDER):");
  int remainder = number1 % number2;
  print("$number1 % $number2 = $remainder");
  print("Explanation: Returns remainder after division\n");
  print("Example: 15 ÷ 4 = 3 with remainder 3\n");
  
  // ========== UNARY OPERATORS ==========
  print("=== UNARY OPERATORS ===");
  
  //  Unary Minus
  print(" UNARY MINUS:");
  int positive = 10;
  int negative = -positive;
  print("positive = $positive");
  print("negative = -positive = $negative");
  print("Explanation: Changes sign of the number\n");
  
  // ========== INCREMENT & DECREMENT OPERATORS ==========
  print("=== INCREMENT & DECREMENT OPERATORS ===");
  
  //  Post-increment (i++)
  print(" POST-INCREMENT (value++):");
  int postIncrement = 5;
  print("Initial value: postIncrement = $postIncrement");
  print("Using postIncrement++: ${postIncrement++}"); // Returns 5, then becomes 6
  print("After postIncrement++: postIncrement = $postIncrement");
  print("Behavior: Use current value, THEN increment\n");
  
  //  Pre-increment (++i)
  print(" PRE-INCREMENT (++value):");
  int preIncrement = 5;
  print("Initial value: preIncrement = $preIncrement");
  print("Using ++preIncrement: ${++preIncrement}"); // Becomes 6, then returns 6
  print("After ++preIncrement: preIncrement = $preIncrement");
  print("Behavior: Increment FIRST, then use new value\n");
  
  //  Post-decrement (i--)
  print(" POST-DECREMENT (value--):");
  int postDecrement = 5;
  print("Initial value: postDecrement = $postDecrement");
  print("Using postDecrement--: ${postDecrement--}"); // Returns 5, then becomes 4
  print("After postDecrement--: postDecrement = $postDecrement");
  print("Behavior: Use current value, THEN decrement\n");
  
  //  Pre-decrement (--i)
  print(" PRE-DECREMENT (--value):");
  int preDecrement = 5;
  print("Initial value: preDecrement = $preDecrement");
  print("Using --preDecrement: ${--preDecrement}"); // Becomes 4, then returns 4
  print("After --preDecrement: preDecrement = $preDecrement");
  print("Behavior: Decrement FIRST, then use new value\n");
  
  // ========== PRACTICAL EXAMPLES ==========
  print("===  PRACTICAL EXAMPLES ===");
  
  //  Shopping Cart Total
  print(" SHOPPING CART EXAMPLE:");
  double itemPrice = 29.99;
  int quantity = 3;
  double discount = 5.0;
  double total = (itemPrice * quantity) - discount;
  print("Item Price: \$$itemPrice");
  print("Quantity: $quantity");
  print("Discount: \$$discount");
  print("Total = (\$$itemPrice × $quantity) - \$$discount = \$${total.toStringAsFixed(2)}\n");
  
  //  Pizza Slices Calculation
  print(" PIZZA SLICES EXAMPLE:");
  int totalSlices = 8;
  int people = 3;
  int slicesPerPerson = totalSlices ~/ people;
  int leftoverSlices = totalSlices % people;
  print("Total Slices: $totalSlices");
  print("People: $people");
  print("Slices per person: $totalSlices ~/ $people = $slicesPerPerson");
  print("Leftover slices: $totalSlices % $people = $leftoverSlices\n");
  
  //  Percentage Calculation
  print(" PERCENTAGE EXAMPLE:");
  double obtainedMarks = 85.0;
  double totalMarks = 100.0;
  double percentage = (obtainedMarks / totalMarks) * 100;
  print("Obtained Marks: $obtainedMarks");
  print("Total Marks: $totalMarks");
  print("Percentage = ($obtainedMarks / $totalMarks) × 100 = ${percentage.toStringAsFixed(1)}%\n");
  
  // ========== COMMON MISTAKES TO AVOID ==========
  print("===  COMMON MISTAKES ===");
  print("1. Using '/' when you want integer result → Use '~/' instead");
  print("2. Forgetting that division always returns double");
  print("3. Confusing post-increment (i++) with pre-increment (++i)");
  print("4. Using modulus with zero: number % 0 causes error\n");
  
  print(" ARITHMETIC OPERATORS MASTERED!");
}