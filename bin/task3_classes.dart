import '../lib/models/student.dart';
import '../lib/models/course.dart';
import '../lib/models/university.dart';

void main() {
  print('=== University Management System Demo ===');

  runUniversityDemo();
}

void runUniversityDemo() {
  University university = University(
    name: 'State University',
  );

  Student student1 = Student(
    id: 'S001',
    firstName: 'Dmytro',
    lastName: 'Kuzmenko',
    birthDate: DateTime(2005, 5, 10),
  );

  Student student2 = Student(
    id: 'S002',
    firstName: 'Ivan',
    lastName: 'Petrenko',
    birthDate: DateTime(2004, 3, 15),
  );

  Professor professor = Professor(
    id: 'P001',
    firstName: 'Oleg',
    lastName: 'Shevchenko',
    birthDate: DateTime(1980, 2, 20),
    department: 'Computer Science',
    salary: 2500,
  );

  Course dartCourse = Course(
    id: 'C001',
    name: 'Dart Programming',
    description: 'Introduction to Dart',
    credits: 5,
    instructor: professor.fullName,
  );

  university.students.add(student1);
  university.students.add(student2);

  university.professors.add(professor);

  university.courses.add(dartCourse);

  student1.enrollInCourse('C001');
  student2.enrollInCourse('C001');

  student1.addGrade('C001', 95);
  student2.addGrade('C001', 82);

  print('\nStudents:');
  for (var student in university.students) {
    print(student);
  }

  print('\nCourses:');
  for (var course in university.courses) {
    print(course);
  }

  print('\nStatistics:');
  print(university.generateStatistics());
}