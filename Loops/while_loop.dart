// while_loop.dart

void main() {
  print("=== WHILE LOOP EXAMPLES ===\n");

  basicWhileLoop();
  userSimulation();
  advancedWhileLoop();
}

// 🔹 1. Basic While Loop
void basicWhileLoop() {
  print("1. Basic While Loop:");

  int i = 1;

  while (i <= 5) {
    print("Count: $i");
    i++;
  }

  print("");
}

// 🔹 2. Simulated User Input Loop
void userSimulation() {
  print("2. Simulated User Loop:");

  int attempts = 0;

  while (attempts < 3) {
    print("Trying... Attempt ${attempts + 1}");
    attempts++;
  }

  print("Max attempts reached!\n");
}

// 🔹 3. Advanced While Loop (Break + Condition)
void advancedWhileLoop() {
  print("3. Advanced While Loop:");

  int number = 1;

  while (true) {
    if (number > 5) {
      break;
    }

    print("Number: $number");
    number++;
  }

  print("");
}