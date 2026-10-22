# Dart Basics Kuzmenko

Практична робота №4

## Мета роботи

Ознайомлення з основами мови програмування Dart:

змінні та типи даних;
функції;
об'єктно-орієнтоване програмування;
колекції та обробка даних;
асинхронне програмування.

## UML Diagram

```text
                Person
                   |
                   |
             Professor
                   |
                   |
---------------------------------

Student
+ id
+ firstName
+ lastName
+ birthDate
+ enrolledCourses
+ grades

Course
+ id
+ name
+ description
+ credits
+ instructor
+ prerequisites

University
+ students
+ professors
+ courses
```
## Sample Report

Students: 2
Professors: 1
Courses: 1
Average GPA: 88.50

---

## Структура проєкту

```text
bin/
├── task1_variables.dart
├── task2_functions.dart
├── task3_classes.dart
├── task4_collections.dart
└── task5_async.dart

lib/
├── models/
│   ├── student.dart
│   ├── course.dart
│   └── university.dart
│
└── utils/
    └── data_processor.dart

test/
├── models_test.dart
└── utils_test.dart