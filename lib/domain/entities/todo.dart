

class Todo {

  final String id;
  final String description;
  final DateTime? completedAt;

  Todo({
    required this.id,
    required this.description,
    required this.completedAt,
  });

  bool get done {
    return completedAt != null; // true or false
  }

  Todo copyWith({
    String? id,
    String? description,
    DateTime? completedAt,
  }) => Todo(
    id: id ?? this.id,
    description: description ?? this.description,
    completedAt: completedAt,
  );

}