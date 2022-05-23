class Task {
  String name;
  bool isDone = false;
  // bool isDone;

  Task(this.name);
  // Task({required this.name, required this.isDone});

  void toggleDone() {
    isDone = !isDone;
  }
}
