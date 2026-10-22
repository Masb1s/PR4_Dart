import 'student.dart';
import 'course.dart';

abstract class Person {
  final String id;
  final String firstName;
  final String lastName;
  final DateTime birthDate;

  Person({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.birthDate,
  });

  String get fullName;
  int get age;
  String get role;
}

class Professor extends Person {
  final String department;
  final List<String> taughtCourses;
  final double salary;

  Professor({
    required String id,
    required String firstName,
    required String lastName,
    required DateTime birthDate,
    required this.department,
    required this.salary,
    List<String>? taughtCourses,
  })  : taughtCourses = taughtCourses ?? [],
        super(
          id: id,
          firstName: firstName,
          lastName: lastName,
          birthDate: birthDate,
        );

  @override
  String get fullName => '$firstName $lastName';

  @override
  int get age {
    final now = DateTime.now();
    int result = now.year - birthDate.year;

    if (now.month < birthDate.month ||
        (now.month == birthDate.month &&
            now.day < birthDate.day)) {
      result--;
    }

    return result;
  }

  @override
  String get role => 'Professor';

  void addCourse(String courseId) {
    if (!taughtCourses.contains(courseId)) {
      taughtCourses.add(courseId);
    }
  }

  @override
  String toString() {
    return '$fullName ($department)';
  }
}

class University {
  final String name;
  final List<Student> students;
  final List<Professor> professors;
  final List<Course> courses;

  University({
    required this.name,
    List<Student>? students,
    List<Professor>? professors,
    List<Course>? courses,
  })  : students = students ?? [],
        professors = professors ?? [],
        courses = courses ?? [];

  void addStudent(Student student) {
    students.add(student);
  }

  void removeStudent(String studentId) {
    students.removeWhere((s) => s.id == studentId);
  }

  Student? findStudentById(String id) {
    try {
      return students.firstWhere((s) => s.id == id);
    } catch (_) {
      return null;
    }
  }

  List<Student> getStudentsByCourse(String courseId) {
    return students
        .where((s) => s.enrolledCourses.contains(courseId))
        .toList();
  }

  List<Course> getAvailableCoursesForStudent(
      String studentId) {
    Student? student = findStudentById(studentId);

    if (student == null) {
      return [];
    }

    return courses
        .where((course) =>
            course.canStudentEnroll(student))
        .toList();
  }

  Map<String, dynamic> generateStatistics() {
    double averageGpa = 0;

    if (students.isNotEmpty) {
      averageGpa =
          students.map((s) => s.gpa).reduce((a, b) => a + b) /
              students.length;
    }

    return {
      'students': students.length,
      'professors': professors.length,
      'courses': courses.length,
      'averageGPA': averageGpa.toStringAsFixed(2),
    };
  }
}