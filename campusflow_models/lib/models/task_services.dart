import 'task.dart';

Future<List<Task>> fetchTasks() async {
  // Simuler un délai pour imiter une requête réseau
  await Future.delayed(Duration(seconds: 2));

  // Retourner une liste d'exemples de tâches
  return [
    Task(id: '1', title: 'Tâche 1', description: 'Description de la tâche 1'),
    Task(id: '2', title: 'Tâche 2', description: 'Description de la tâche 2'),
    Task(id: '3', title: 'Tâche 3', description: 'Description de la tâche 3'),
  ];
}
