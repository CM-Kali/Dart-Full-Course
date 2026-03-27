// for_loop.dart   
// printing numbers, iterating through lists, and using conditions in loops.

void main() {
  print("=== FOR LOOP EXAMPLES ===\n");

  basicForLoop();
  listIteration();
  advancedForLoop();
}

// 🔹 1. Basic For Loop
void basicForLoop() {
  print("1. Basic For Loop:");

  for (int i = 1; i <= 5; i++) {
    print("Number: $i");
  }

  print("");
}

// 🔹 2. Iterating through a List
void listIteration() {
  print("2. List Iteration:");

  List<String> fruits = ["Apple", "Banana", "Mango"];

  for (int i = 0; i < fruits.length; i++) {
    print("Fruit ${i + 1}: ${fruits[i]}");
  }

  print("");
}

// 🔹 3. Advanced For Loop (reverse + conditions)
void advancedForLoop() {
  print("3. Advanced For Loop:");

  for (int i = 10; i >= 1; i--) {
    if (i % 2 == 0) {
      print("Even: $i");
    }
  }

  print("");
}