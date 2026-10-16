import 'package:campusflow_models/models/task.dart';
import 'package:test/test.dart';  
void main() {
  //Test 1 : copywith
  test('copyWith should create a new Task with updated fields', () {
    final task1 = Task(id: '1', title: 'Tâche 1', description: 'Description de la tâche 1');
    final task2 = task1.copyWith(title: 'Tâche 2');
    expect(task2.id, '1');
    expect(task2.title, 'Tâche 2');
    expect(task2.description, 'Description de la tâche 1');
    expect(task1.title, 'Tâche 1');
  });

  //Test 2 : fromJson
  test('fromJson should create a Task from JSON', () {
    final json = {'id': '2', 'title': 'Tâche 3', 'description': 'Description de la tâche 3'};
    final task = Task.fromJson(json);
    expect(task.id, '2');
    expect(task.title, 'Tâche 3');
    expect(task.description, 'Description de la tâche 3');
  });

  //Test 3 : erreur attendue
  test('fromJson should throw an error for invalid JSON', () {
    final json = {'id': 'abc', 'title': 'Tâche invalide'};
    expect(() => Task.fromJson(json), throwsA(isA<TypeError>()));
  });
}