void main() {
  // Variables
  int age = 20;
  bool hasCNIC = true;
  bool isBlocked = false;

  // ==============================
  // Logical AND (&&)
  // ==============================
  print("----- Logical AND (&&) -----");

  if (age >= 18 && hasCNIC) {
    print("Eligible to vote");
  } else {
    print("Not eligible to vote");
  }

  // ==============================
  // Logical OR (||)
  // ==============================
  print("\n----- Logical OR (||) -----");

    print("Identity Verified");

  // ==============================
  // Logical NOT (!)
  // ==============================
  print("\n----- Logical NOT (!) -----");

  if (!isBlocked) {
    print("Account is Active");
  // ignore: dead_code
  } else {
    print("Account is Blocked");
  }

  // ==============================
  // Combined Example
  // ==============================
  print("\n----- Combined Logical Operators -----");

  if (age >= 18 && hasCNIC && !isBlocked) {
    print("Login Successful and Access Granted");
  } else {
    print("Access Denied");
  }
}