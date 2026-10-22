import '../models/student.dart';
import '../models/university.dart';

class DataProcessor {
  static List<int> filterEvenNumbers(List<int> numbers) {
    return numbers.where((n) => n.isEven).toList();
  }

  static Map<String, int> countWords(String text) {
    Map<String, int> result = {};

    for (var word in text.split(' ')) {
      result[word] = (result[word] ?? 0) + 1;
    }

    return result;
  }

  static List<Map<String, dynamic>> sortStudentsByGPA(
      List<Student> students) {
    students.sort((a, b) => b.gpa.compareTo(a.gpa));

    return students
        .map((s) => {
              'name': s.fullName,
              'gpa': s.gpa,
            })
        .toList();
  }

  static Set<String> findCommonCourses(
      List<Student> students) {
    if (students.isEmpty) {
      return {};
    }

    Set<String> common =
        students.first.enrolledCourses.toSet();

    for (var student in students.skip(1)) {
      common =
          common.intersection(student.enrolledCourses.toSet());
    }

    return common;
  }

  static Map<String, double>
      calculateAverageGradesByCourse(
          List<Student> students) {
    Map<String, List<double>> courseGrades = {};

    for (var student in students) {
      student.grades.forEach((course, grade) {
        courseGrades.putIfAbsent(course, () => []);
        courseGrades[course]!.add(grade);
      });
    }

    Map<String, double> averages = {};

    courseGrades.forEach((course, grades) {
      double avg =
          grades.reduce((a, b) => a + b) / grades.length;

      averages[course] = avg;
    });

    return averages;
  }

  static List<Map<String, dynamic>> generateReport(
      University university) {
    return university.students
        .map(
          (student) => {
            'name': student.fullName,
            'gpa': student.gpa,
            'courses': student.enrolledCourses.length,
          },
        )
        .toList();
  }
}