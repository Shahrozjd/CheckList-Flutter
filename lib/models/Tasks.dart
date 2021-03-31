class Tasks {
  final String name;
  bool isDone;

  Tasks({this.name, this.isDone = false});

  void toggleDone()
  {
    this.isDone = !this.isDone;
    print(isDone.toString());
  }
}