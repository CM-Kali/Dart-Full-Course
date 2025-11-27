

void main() {
  print("---------- NUMBERS ----------");
  // Integer
  int age = 21;
  // Double (floating point)
  double price = 199.99;

  print("Age: $age");
  print("Price: $price");

  print("\n---------- STRINGS ----------");
  // String
  String name = "CMADEEL";
  String greeting = 'Hello, $name!';
  String multiline = """
This is a
multiline string.
""";

  print("Name: $name");
  print("Greeting: $greeting");
  print("Multiline string:\n$multiline");

  print("\n---------- BOOLEANS ----------");
  bool isLoggedIn = true;
  bool hasPaid = false;

  print("Logged in: $isLoggedIn");
  print("Has Paid: $hasPaid");

  print("\n---------- LISTS ----------");
  // Ordered collection
  List<String> fruits = ["Apple", "Banana", "Mango"];
  List<int> numbers = [1, 2, 3, 4, 5];

  print("Fruits: $fruits");
  print("Numbers: $numbers");

  // Adding elements
  fruits.add("Orange");
  print("Fruits after add: $fruits");

  print("\n---------- SETS ----------");
  // Unordered collection, unique items
  Set<String> countries = {"Pakistan", "India", "USA"};
  countries.add("UK");
  countries.add("USA"); // duplicate ignored
  print("Countries: $countries");

  print("\n---------- MAPS ----------");
  // Key-value pairs
  Map<String, int> marks = {
    "Ali": 95,
    "Ahmed": 88,
    "Hammad": 90
  };

  print("Marks: $marks");
  print("Ali's Marks: ${marks['Ali']}");

  print("\n---------- RUN-TIME TYPE CHECK ----------");
  var value = 100; // inferred as int
  print("Value: $value, type: ${value.runtimeType}");

  value = 99.99 as int; // type changed if dynamic
  // For var it will give error if type mismatch
  // Use dynamic if type should change
  dynamic dynamicValue = 100;
  print("Dynamic value: $dynamicValue, type: ${dynamicValue.runtimeType}");
  dynamicValue = "Hello";
  print("Dynamic value: $dynamicValue, type: ${dynamicValue.runtimeType}");



  print("\n---------- NULLABLE TYPES ----------");
  String? nullableName; // can be null
  print("Nullable name: $nullableName");
  nullableName = "CMADEEL";
  print("Nullable name after assignment: $nullableName");

  print("\n---------- CONSTANTS ----------");
  const PI = 3.14159; // compile-time constant
  final currentYear = DateTime.now().year; // runtime constant

  print("PI: $PI, Current Year: $currentYear");
}
