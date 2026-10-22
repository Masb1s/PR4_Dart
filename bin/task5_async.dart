import 'dart:async';

void main() async {
  print('=== Dart Async Programming Demo ===');

  await demonstrateFutures();
  await demonstrateStreams();
}

Future<String> fetchStudentData(
  String studentId,
) async {
  await Future.delayed(
    Duration(seconds: 1),
  );

  return 'Student data for $studentId';
}

Future<void> demonstrateFutures() async {
  print('\n--- Futures ---');

  String result =
      await fetchStudentData('S001');

  print(result);

  List<String> students =
      await Future.wait([
    fetchStudentData('S001'),
    fetchStudentData('S002'),
    fetchStudentData('S003'),
  ]);

  print(students);
}

Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(
      Duration(milliseconds: 500),
    );

    yield i;
  }
}

Future<void> demonstrateStreams() async {
  print('\n--- Streams ---');

  await for (var number
      in numberStream()) {
    print(number);
  }
}