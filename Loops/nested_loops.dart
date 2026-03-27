// nested_loops.dart

void main() {
  print("=== NESTED LOOPS EXAMPLES ===\n");

  multiplicationTable();
  starPattern();
  advancedMatrix();
}

// 🔹 1. Multiplication Table
void multiplicationTable() {
  print("1. Multiplication Table:");

  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 5; j++) {
      print("$i x $j = ${i * j}");
    }
    print("");
  }
}

// 🔹 2. Star Pattern
void starPattern() {
  print("2. Star Pattern:");

  for (int i = 1; i <= 5; i++) {
    String stars = "";

    for (int j = 1; j <= i; j++) {
      stars += "* ";
    }

    print(stars);
  }

  print("");
}

// 🔹 3. Advanced Matrix Traversal
void advancedMatrix() {
  print("3. Matrix Traversal:");

  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      print("Element [$i][$j] = ${matrix[i][j]}");
    }
  }

  print("");
}