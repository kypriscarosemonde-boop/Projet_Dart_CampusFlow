class User {
  // 1. Attributs finaux 
  final String id;
  final String name;
  final String email;

  // 2. Constructeur 
  const User({
    required this.id,
    required this.name,
    required this.email,
  });

  // 3. Méthode copyWith pour cloner l'objet en modifiant certains champs
  User copyWith({
    String? id,
    String? name,
    String? email,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }
}

// Test de la classe User dans la fonction main
void main() {
  // Création de l'utilisateur initial
  const user1 = User(id: '1', name: 'name:Alice', email: 'alice@example.com');

  // Modification du nom uniquement via copyWith
  final user2 = user1.copyWith(name: 'Alice Smith');

  print(user2.name);  
  print(user2.email); 
  print(user1.name);
}
