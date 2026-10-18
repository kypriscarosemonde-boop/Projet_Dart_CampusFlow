class Task {
  final String id;
  final String title;
  final String description;

//Creation du constructeur pour la classe Task
  const Task({
    required this.id,
    required this.title,
    required this.description,
  });

//Ajout d'une méthode copyWith pour cloner l'objet en modifiant certains champs
  Task copyWith({
    String? id,
    String? title,
    String? description,
  })

  //Retourne un nouvel objet Task avec les champs modifiés ou les valeurs existantes si elles ne sont pas fournies 
  {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  //Ajout d'une méthode factory pour créer un objet Task à partir d'un JSON
  
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }
}

// Test de la classe Task dans la fonction main
void main(){
    const task1 = Task(id : '5',title : 'voyage',description : 'belle vie');
    final task2 = task1.copyWith(id : '8',title :'plaisir');

    print(task1.id);
    print(task2.id);
    print(task1.title);
    print(task2.title);
    print(task1.description);
    print(task2.description);
}