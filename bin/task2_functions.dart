void main() {
  print('=== Dart Functions Demo ===');

  testBasicFunctions();
  testAdvancedFunctions();
  testFunctionalProgramming();
}

void testBasicFunctions() {
  print('\n--- Basic Functions ---');

  print(calculateSum(10, 20));

  List<double> numbers = [10, 20, 30, 40];

  print(calculateAverage(numbers));
}

void testAdvancedFunctions() {
  print('\n--- Advanced Functions ---');

  print(formatName(
    'Dmytro',
    'Kuzmenko',
  ));

  print(formatName(
    'Dmytro',
    'Kuzmenko',
    middleName: 'Ivanovich',
    uppercase: true,
  ));

  print('Factorial 5 = ${factorial(5)}');
  print('Fibonacci 7 = ${fibonacci(7)}');
}

int calculateSum(int a, int b) {
  return a + b;
}

double calculateAverage(List<double> numbers) {
  double sum = 0;

  for (double number in numbers) {
    sum += number;
  }

  return sum / numbers.length;
}

String formatName(
  String firstName,
  String lastName, {
  String? middleName,
  bool uppercase = false,
}) {
  String fullName;

  if (middleName != null) {
    fullName = '$firstName $middleName $lastName';
  } else {
    fullName = '$firstName $lastName';
  }

  if (uppercase) {
    return fullName.toUpperCase();
  }

  return fullName;
}

int factorial(int n) {
  if (n <= 1) {
    return 1;
  }

  return n * factorial(n - 1);
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }

  return fibonacci(n - 1) + fibonacci(n - 2);
}

void testFunctionalProgramming() {
  print('\n--- Functional Programming ---');

  List<int> numbers = [1, 2, 3, 4, 5];

  var doubled =
      numbers.map((number) => number * 2).toList();

  var even =
      numbers.where((number) => number % 2 == 0).toList();

  var total =
      numbers.fold(0, (sum, number) => sum + number);

  print(doubled);
  print(even);
  print(total);

  Function counter = createCounter();

  print(counter());
  print(counter());
  print(counter());
}

Function createCounter() {
  int count = 0;

  return () {
    count++;
    return count;
  };
}