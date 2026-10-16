class Course {
  final String id;
  final String name;
  final int duration; // Durée du cours en heures

  const Course({
    required this.id,
    required this.name,
    required this.duration,
  });

  Course copyWith({
    String? id,
    String? name,
    int? duration,
  }) {
    return Course(
      id: id ?? this.id,
      name: name ?? this.name,
      duration: duration ?? this.duration
    );
  }

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'] as String,
      name: json['name'] as String,
      duration: json['duration'] as int,
    );
  }
}