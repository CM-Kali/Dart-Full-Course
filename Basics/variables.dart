

void main() {
  print("---------- BASIC VARIABLE TYPES ----------");

  // Explicitly typed variables
  String name = "CMADEEL";
  int age = 21;
  double height = 5.9;
  bool isStudent = true;

  print("Name: $name");
  print("Age: $age");
  print("Height: $height");
  print("Is Student: $isStudent");

  print("\n---------- VAR KEYWORD (Type Inference) ----------");

  // var = compiler decides the type automatically
  var city = "Kahuta"; // String
  var marks = 95; // int
  var price = 199.99; // double

  print("City: $city");
  print("Marks: $marks");
  print("Price: $price");

  // city = 56; 


  print("\n---------- DYNAMIC KEYWORD ----------");

  // dynamic = type can change at runtime
  dynamic anything = "Pakistan";
  print("Dynamic value: $anything");

  anything = 2025;
  print("Dynamic value after change: $anything");

  anything = true;
  print("Dynamic value after change: $anything");


  print("\n---------- FINAL KEYWORD ----------");

  // final = value assigned only once (runtime constant)
  final country = "Pakistan";
  // country = "India";  NOT ALLOWED

  print("Final country: $country");


  print("\n---------- CONST KEYWORD ----------");

  // const = compile-time constant
  const PI = 3.14159;
  const gravity = 9.8;

  print("PI constant: $PI");
  print("Gravity constant: $gravity");

  // final vs const example
  final currentYear = DateTime.now().year; // allowed
  // const today = DateTime.now().year;    NOT allowed (not compile-time)


  print("\n---------- LATE KEYWORD ----------");

  // late = variable declared now, initialized later
  late String description;

  // Some calculations ...
  description = "This is a Dart course repo created by CMADEEL.";

  print("Late variable: $description");


  print("\n---------- NULLABLE VARIABLES (?) ----------");

  // Nullable variable
  String? maybeName = null;
  print("Nullable name: $maybeName");

  maybeName = "Adeel";
  print("Nullable name after value: $maybeName");


  print("\n---------- MULTIPLE DECLARATIONS ----------");

  int a = 5, b = 10, c = 15;
  print("Values: a=$a, b=$b, c=$c");


  print("\n---------- CONSTANT LISTS & MAPS ----------");

  final List<int> numbers = [1, 2, 3]; // list can change, variable cannot reassign
  numbers.add(4);
  print("Final list: $numbers");

  const List<String> names = ["Ali", "Ahmed", "Hammad"];
  print("Const list: $names"); // cannot add new values

  final Map<String, int> studentMarks = {"Ali": 95, "Ahmed": 88};
  print("Student marks: $studentMarks");

  print("\n---------- SUMMARY ----------");
  print("""
var       = type inferred once
dynamic   = type can change
final     = value assigned once (runtime)
const     = compile-time constant
late      = initialized later
?         = nullable variable
""");
}
