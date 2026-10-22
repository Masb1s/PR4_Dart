void main() {
  print('=== Dart Collections & Data Processing Demo ===');

  demonstrateLists();
  demonstrateSets();
  demonstrateMaps();
  demonstrateAdvancedOperations();
}

void demonstrateLists() {
  print('\n--- Lists ---');

  List<int> numbers = [5, 2, 8, 1, 9];

  print('Original: $numbers');

  numbers.sort();

  print('Sorted: $numbers');

  print(
    'Even: ${numbers.where((n) => n.isEven).toList()}',
  );

  print(
    'Doubled: ${numbers.map((n) => n * 2).toList()}',
  );

  print(
    'Sum: ${numbers.fold(0, (a, b) => a + b)}',
  );
}

void demonstrateSets() {
  print('\n--- Sets ---');

  Set<int> setA = {1, 2, 3, 4};
  Set<int> setB = {3, 4, 5, 6};

  print('Union: ${setA.union(setB)}');

  print(
    'Intersection: ${setA.intersection(setB)}',
  );
}

void demonstrateMaps() {
  print('\n--- Maps ---');

  Map<String, int> grades = {
    'Math': 90,
    'Physics': 85,
    'Programming': 100,
  };

  grades.forEach((subject, grade) {
    print('$subject : $grade');
  });
}

void demonstrateAdvancedOperations() {
  print('\n--- Advanced Operations ---');

  List<Map<String, dynamic>> students = [
    {
      'name': 'Dmytro',
      'gpa': 95,
    },
    {
      'name': 'Ivan',
      'gpa': 82,
    },
    {
      'name': 'Andriy',
      'gpa': 91,
    },
  ];

  students.sort(
    (a, b) => b['gpa'].compareTo(a['gpa']),
  );

  print(students);
}
