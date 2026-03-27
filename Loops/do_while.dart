// do_while.dart

void main() {
  print("=== DO-WHILE LOOP EXAMPLES ===\n");

  basicDoWhile();
  guaranteedExecution();
  advancedDoWhile();
}

// 🔹 1. Basic Do-While
void basicDoWhile() {
  print("1. Basic Do-While:");

  int i = 1;

  do {
    print("Value: $i");
    i++;
  } while (i <= 5);

  print("");
}

// 🔹 2. Guaranteed Execution Example
void guaranteedExecution() {
  print("2. Runs At Least Once:");

  int number = 10;

  do {
    print("This runs even if condition is false");
  } while (number < 5);

  print("");
}

// 🔹 3. Advanced Do-While (Menu Simulation)
void advancedDoWhile() {
  print("3. Advanced Example:");

  int option = 1;

  do {
    print("Showing Menu...");
    option++;
  } while (option <= 3);

  print("");
}