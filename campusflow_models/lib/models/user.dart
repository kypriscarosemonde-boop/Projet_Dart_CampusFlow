class UserModel {
  // 1. Attributs finaux 
  final String id;
  final String name;
  final String email;

  // 2. Constructeur 
  const UserModel({
    required this.id,
    required this.name,
    required this.email,
  });

  // 3. Méthode copyWith pour cloner l'objet en modifiant certains champs
  UserModel copyWith({
    String? id,
    String? name,
    String? email,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }
}

void main() {
  // Création de l'utilisateur initial
  const user1 = UserModel(id: '1', name: 'name:Alice', email: 'alice@example.com');

  // Modification du nom uniquement via copyWith
  final user2 = user1.copyWith(name: 'Alice Smith');

  print(user2.name);  
  print(user2.email); 
  print(user1.name);
}
