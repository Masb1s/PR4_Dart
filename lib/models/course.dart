import 'student.dart';

class Course {
  final String id;
  final String name;
  final String description;
  final int credits;
  final String instructor;
  final List<String> prerequisites;

  Course({
    required this.id,
    required this.name,
    required this.description,
    required this.credits,
    required this.instructor,
    List<String>? prerequisites,
  }) : prerequisites = prerequisites ?? [];

  bool hasPrerequisites() {
    return prerequisites.isNotEmpty;
  }

  bool canStudentEnroll(Student student) {
    var passedCourses = student.getPassedCourses();

    for (var prerequisite in prerequisites) {
      if (!passedCourses.contains(prerequisite)) {
        return false;
      }
    }

    return true;
  }

  @override
  String toString() {
    return 'Course: $name ($credits credits)';
  }
}