class Course {
  final String id;
  final String name;
  final int duration; // Durée du cours en heures

  // Création du constructeur pour la classe Course

  const Course({
    required this.id,
    required this.name,
    required this.duration,
  });

//Ajout d'une méthode copyWith pour cloner l'objet en modifiant certains champs
  Course copyWith({
    String? id,
    String? name,
    int? duration,
  })//Retourne un nouvel objet Course avec les champs modifiés ou les valeurs existantes

  {
    return Course(
      id: id ?? this.id,
      name: name ?? this.name,
      duration: duration ?? this.duration
    );
  }
  //Ajout d'une méthode factory pour créer un objet Course à partir d'un JSON

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'] as String,
      name: json['name'] as String,
      duration: json['duration'] as int,
    );
  }
}

void main() {
  const course1 = Course(id: 'C1', name: 'Mathematics', duration: 40);
  final course2 = course1.copyWith(name: 'Advanced Mathematics', duration: 60);

  print(course1.id); 
  print(course2.id); 
  print(course1.name); 
  print(course2.name); 
  print(course1.duration); 
  print(course2.duration); 
}