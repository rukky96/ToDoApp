class Task {
  final String title;
  final bool status;

  Task({required this.title, required this.status});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(title: json['title'], status: json['completed']);
  }
}
