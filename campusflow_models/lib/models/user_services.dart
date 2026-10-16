import 'user.dart';

Future<List<User>> fetchUsers() async {
  // Simuler un délai pour imiter une requête réseau
  await Future.delayed(Duration(seconds: 2));

  // Retourner une liste d'exemples d'utilisateurs
  return [
    User(id: '1', name: 'Alice', email: 'alice@example.com'),
    User(id: '2', name: 'Bob', email: 'bob@example.com'),
    User(id: '3', name: 'Charlie', email: 'charlie@example.com'),
  ];
}
