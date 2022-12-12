import 'package:flutter/material.dart';

class Task {
  late String name;
  late String details;
  late String deadline;

  Task(String name, String details, String deadline) {
    this.name = name;
    this.details = details;
    this.deadline = deadline;
  }

  String getName() {
    return name;
  }

  String getDetails() {
    return details;
  }

  String getDeadline() {
    return deadline;
  }

  void setName(String n) {
    name = n;
  }

  void setDetails(String d) {
    details = d;
  }

  void setDeadline(String d) {
    deadline = d;
  }

  static List<Task> todo = [
    Task('Finish hw', 'Calculus assignment', '12PM'),
    Task('Finish hw', 'Bio assignment', '12PM'),
    Task('Finish hw', 'App dev assignment', '12PM'),
  ];
}
