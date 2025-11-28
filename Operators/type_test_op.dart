

void main() {
  print("TYPE TEST & CAST OPERATORS IN DART\n");
  
  // ========== TYPE TEST OPERATORS ==========
  print("=== TYPE TEST OPERATORS (is, is!) ===");
  
  // Create various objects of different types
  var objects = [
    42,                    // int
    3.14,                  // double  
    "Hello Dart",          // String
    true,                  // bool
    [1, 2, 3],             // List<int>
    {'name': 'John'},      // Map<String, String>
    null,                  // Null
    Person('Alice', 25),   // Custom class
    Student('Bob', 20, 'S123'), // Subclass
  ];
  
  print("TESTING VARIOUS OBJECT TYPES:");
  print("We'll check the type of each object in our list\n");
  
  for (var obj in objects) {
    print("Object: $obj");
    print("Runtime Type: ${obj.runtimeType}");
    
    // is operator - type checking
    print("Type Checks:");
    print("  is int: ${obj is int}");
    print("  is double: ${obj is double}");
    print("  is String: ${obj is String}");
    print("  is bool: ${obj is bool}");
    print("  is List: ${obj is List}");
    print("  is Map: ${obj is Map}");
    print("  is Person: ${obj is Person}");
    print("  is Student: ${obj is Student}");
    print("  is Null: ${obj is Null}");
    
    // is! operator - negative type checking
    print("  is! int: ${obj is! int}");
    
    print("");
  }
  
  // ========== TYPE CAST OPERATOR (as) ==========
  print("=== TYPE CAST OPERATOR (as) ===");
  
  // Safe casting when we know the type
  print("SAFE TYPE CASTING:");
  
  dynamic dynamicString = "Dart Programming";
  print("Original dynamic value: '$dynamicString' (${dynamicString.runtimeType})");
  
  // Cast to String when we're sure it's a String
  String stringValue = dynamicString as String;
  print("After 'as String' cast: '$stringValue' (${stringValue.runtimeType})");
  print("We can now use String methods: Length = ${stringValue.length}\n");
  
  // Working with numbers
  print("NUMBER TYPE CASTING:");
  dynamic dynamicNumber = 42;
  print("Original: $dynamicNumber (${dynamicNumber.runtimeType})");
  
  // Cast to int
  int intValue = dynamicNumber as int;
  print("As int: $intValue (${intValue.runtimeType})");
  
  // For double, we need to be careful
  dynamicNumber = 42.5;
  double doubleValue = dynamicNumber as double;
  print("As double: $doubleValue (${doubleValue.runtimeType})\n");
  
  // ========== NULL SAFETY WITH TYPE OPERATORS ==========
  print("=== NULL SAFETY WITH TYPE OPERATORS ===");
  
  dynamic possiblyString = "Hello";
  dynamic possiblyNull = null;
  
  print("Null-safe type checking:");
  print("'$possiblyString' is String: ${possiblyString is String}");
  print("'$possiblyNull' is String: ${possiblyNull is String}");
  print("'$possiblyNull' is Null: ${possiblyNull is Null}");
  
  print("\nSafe casting with null checks:");
  if (possiblyString is String) {
    String safeString = possiblyString as String;
    print("Safe to cast: '$safeString'");
  }
  
  if (possiblyNull is String) {
    String safeString = possiblyNull as String;
    print("This won't print because possiblyNull is not String");
  } else {
    print("Cannot cast null to String - using default");
    String defaultString = possiblyNull as String? ?? "Default Value";
    print("Using default: '$defaultString'");
  }
  print("");
  
  // ========== INHERITANCE & POLYMORPHISM ==========
  print("=== INHERITANCE & POLYMORPHISM ===");
  
  Person person = Student("Charlie", 22, "S456");
  Person purePerson = Person("Diana", 30);
  
  print("Polymorphism in action:");
  print("person is Person: ${person is Person}");
  print("person is Student: ${person is Student}");
  print("purePerson is Person: ${purePerson is Person}");
  print("purePerson is Student: ${purePerson is Student}");
  
  print("\nUsing type checks for specific behavior:");
  if (person is Student) {
    Student student = person as Student;
    student.study();
    print("Student ID: ${student.studentId}");
  }
  
  if (purePerson is Student) {
    print("This won't execute - purePerson is not Student");
  }
  print("");
  
  // ========== PRACTICAL REAL-WORLD EXAMPLES ==========
  print("=== PRACTICAL REAL-WORLD EXAMPLES ===");
  
  // Game Entity System
  print("GAME ENTITY SYSTEM:");
  List<GameEntity> entities = [
    Player("Hero", 100),
    Enemy("Dragon", 200),
    Item("Health Potion", "consumable"),
    Player("Mage", 80),
  ];
  
  for (var entity in entities) {
    print("\nProcessing: ${entity.name} (${entity.runtimeType})");
    
    // Type-specific behavior
    if (entity is Player) {
      print("Player detected - Health: ${entity.health}");
      entity.attack();
    } else if (entity is Enemy) {
      print("Enemy detected - Strength: ${entity.strength}");
      entity.roar();
    } else if (entity is Item) {
      print("Item detected - Type: ${entity.itemType}");
      entity.use();
    }
  }
  print("");
  
  // JSON Data Processing
  print("JSON DATA PROCESSING:");
  Map<String, dynamic> userData = {
    'name': 'John Doe',
    'age': 30,
    'isVerified': true,
    'scores': [85, 92, 78],
    'address': {
      'city': 'New York',
      'zipCode': '10001'
    }
  };
  
  print("Processing user data:");
  
  // Safe type checking for JSON processing
  if (userData['name'] is String) {
    String name = userData['name'] as String;
    print("Name: $name");
  }
  
  if (userData['age'] is int) {
    int age = userData['age'] as int;
    print("Age: $age");
  }
  
  if (userData['scores'] is List) {
    List<dynamic> scores = userData['scores'] as List;
    print("Scores: $scores");
    
    // Further type checking for list elements
    if (scores.isNotEmpty && scores[0] is int) {
      print("First score: ${scores[0]}");
    }
  }
  
  // Handle potential type mismatches
  var potentiallyString = userData['nickname'];
  if (potentiallyString is String) {
    print("Nickname: $potentiallyString");
  } else {
    print("No nickname provided or wrong type");
  }
  print("");
  
  // ========== ERROR HANDLING WITH TYPE CASTS ==========
  print("=== ERROR HANDLING WITH TYPE CASTS ===");
  
  print("Dangerous cast (will cause runtime error):");
  dynamic wrongType = 42;
  
  try {
    String willFail = wrongType as String;
    print("This won't print");
  } catch (e) {
    print("Cast error caught: $e");
  }
  
  print("\nSafe approach with type checking:");
  if (wrongType is String) {
    String safe = wrongType as String;
    print("Safe cast: $safe");
  } else {
    print("Cannot cast ${wrongType.runtimeType} to String");
  }
  print("");
  
  // ========== ADVANCED TYPE CHECKING PATTERNS ==========
  print("=== ADVANCED TYPE CHECKING PATTERNS ===");
  
  // Generic type checking
  print("GENERIC TYPE CHECKING:");
  List<dynamic> mixedList = [1, "hello", 3.14, true, [1, 2, 3]];
  
  for (var item in mixedList) {
    switch (item) {
      case int _:
        print("Found int: $item");
        break;
      case String _:
        print("Found String: '$item'");
        break;
      case double _:
        print("Found double: $item");
        break;
      case bool _:
        print("Found bool: $item");
        break;
      case List _:
        print("Found List: $item");
        break;
      default:
        print("Unknown type: $item (${item.runtimeType})");
    }
  }
  print("");
  
}

// ========== SUPPORTING CLASSES ==========

class Person {
  String name;
  int age;
  
  Person(this.name, this.age);
  
  @override
  String toString() => "Person(name: $name, age: $age)";
}

class Student extends Person {
  String studentId;
  
  Student(String name, int age, this.studentId) : super(name, age);
  
  void study() {
    print("$name is studying hard!");
  }
  
  @override
  String toString() => "Student(name: $name, age: $age, id: $studentId)";
}

// Game-related classes for practical examples
abstract class GameEntity {
  String name;
  GameEntity(this.name);
}

class Player extends GameEntity {
  int health;
  
  Player(String name, this.health) : super(name);
  
  void attack() {
    print("$name attacks with sword!");
  }
}

class Enemy extends GameEntity {
  int strength;
  
  Enemy(String name, this.strength) : super(name);
  
  void roar() {
    print("$name roars loudly!");
  }
}

class Item extends GameEntity {
  String itemType;
  
  Item(String name, this.itemType) : super(name);
  
  void use() {
    print("Using $name ($itemType)");
  }
}