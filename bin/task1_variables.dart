void main() {
  print('=== Dart Variables & Types Demo ===');

  demonstrateNumbers();
  demonstrateStrings();
  demonstrateBooleans();
  demonstrateCollections();
  demonstrateNullSafety();
}

void demonstrateNumbers() {
  print('\n--- Numbers ---');

  int age = 18;
  double price = 99.99;
  num value = 150;

  print('Age: $age');
  print('Price: $price');
  print('Value: $value');

  print('Sum: ${age + value}');

  int convertedInt = price.toInt();
  double convertedDouble = age.toDouble();

  print('Converted int: $convertedInt');
  print('Converted double: $convertedDouble');
}

void demonstrateStrings() {
  print('\n--- Strings ---');

  String firstName = 'Dmytro';
  String lastName = 'Kuzmenko';

  print('$firstName $lastName');

  String multiLine = '''
Hello
Dart
World
''';

  print(multiLine);

  print(firstName.toUpperCase());
  print(lastName.length);
}

void demonstrateBooleans() {
  print('\n--- Booleans ---');

  bool isStudent = true;
  bool hasScholarship = false;

  print(isStudent && !hasScholarship);
  print(10 > 5);
}

void demonstrateCollections() {
  print('\n--- Collections ---');

  List<String> subjects = ['Math', 'Physics', 'Programming'];

  Set<int> numbers = {1, 2, 3, 3, 2};

  Map<String, int> grades = {
    'Math': 95,
    'Physics': 89,
  };

  print(subjects);
  print(numbers);
  print(grades);
}

void demonstrateNullSafety() {
  print('\n--- Null Safety ---');

  String? nickname;

  print(nickname ?? 'No nickname');

  nickname = 'Dimon';

  print(nickname);
}