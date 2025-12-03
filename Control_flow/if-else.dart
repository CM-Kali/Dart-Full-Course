void main() {
  print('=== IF-ELSE STATEMENTS IN DART ===\n');
  
  // 1. Simple If Statement
  print('1. Simple If Statement:');
  int age = 18;

  if (age >= 18) {
    print('   You are an adult.');
  }
  print('');

  // 2. If-Else Statement
  print('2. If-Else Statement:');
  int temperature = 15;

  if (temperature > 25) {
    print('   It is hot outside.');
  } else {
    print('   It is cool outside.');
  }
  print('');

  // 3. If-Else If-Else (Multiple Conditions)
  print('3. If-Else If-Else Statement:');
  int score = 75;

  if (score >= 90) {
    print('   Grade: A - Excellent');
  } else if (score >= 80) {
    print('   Grade: B - Very Good');
  } else if (score >= 70) {
    print('   Grade: C - Good');
  } else if (score >= 60) {
    print('   Grade: D - Pass');
  } else {
    print('   Grade: F - Need to study more');
  }
  print('');

  // 4. Nested If Statements
  print('4. Nested If Statements:');
  bool hasLicense = true;
  int driverAge = 20;

  if (hasLicense) {
    if (driverAge >= 18) {
      print('   You can drive.');
    } else {
      print('   You have a license but are too young.');
    }
  } 
  else {
    print('   You need a license first.');
  }
  print('');

  // 5. Logical Operators (AND, OR, NOT)
  print('5. Using Logical Operators:');

  String username = 'john';
  String password = 'pass123';

  if (username == 'john' && password == 'pass123') {
    print('   Login successful.');
  } else {
    print('   Invalid credentials.');
  }

  String day = 'Saturday';

  if (day == 'Saturday' || day == 'Sunday') {
    print('   It is the weekend.');
  } else {
    print('   It is a weekday.');
  }

  bool isRaining = false;

  if (!isRaining) {
    print('   Weather is clear.');
  } else {
    print('   It is raining.');
  }
  print('');

  // 6. Ternary Operator (Short If-Else)
  print('6. Ternary Operator (Shorthand):');
  int number = 7;
  String result = (number % 2 == 0) ? 'Even' : 'Odd';
  print('   $number is $result');

  int price = 50;
  String discount = (price > 100) ? '20% off' : 'No discount';
  print('   Discount: $discount');
  print('');

  // 7. Real-World Example: Shopping Cart
  print('7. Real-World Example - Shopping Cart:');
  double cartTotal = 85.50;
  bool isMember = true;
  String couponCode = 'SAVE10';

  print('   Cart Total: \$$cartTotal');

  if (cartTotal >= 100) {
    print('   Free shipping.');
  } else {
    print('   Shipping: \$5.99');
    cartTotal += 5.99;
  }

  if (isMember) {
    double memberDiscount = cartTotal * 0.05;
    cartTotal -= memberDiscount;
    print('   Member discount: -\$${memberDiscount.toStringAsFixed(2)}');
  }

  if (couponCode == 'SAVE10') {
    double couponDiscount = cartTotal * 0.10;
    cartTotal -= couponDiscount;
    print('   Coupon applied: -\$${couponDiscount.toStringAsFixed(2)}');
  }

  print('   Final Total: \$${cartTotal.toStringAsFixed(2)}');
  print('');

  // 8. Practice Exercise
  print('8. Practice Exercise - Age Classifier:');
  int personAge = 35;

  if (personAge < 13) {
    print('   Category: Child');
  } else if (personAge >= 13 && personAge < 20) {
    print('   Category: Teenager');
  } else if (personAge >= 20 && personAge < 60) {
    print('   Category: Adult');
  } else {
    print('   Category: Senior');
  }
}
