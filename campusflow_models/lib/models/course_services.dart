
import ' course.dart';
Future<List<Course>> fetchCourses() async {
  // Simuler un délai pour imiter une requête réseau
  await Future.delayed(Duration(seconds: 2));

  // Retourner une liste d'exemples de cours
  return [
    Course(id: '1', name: 'Mathématiques', duration: 3),
    Course(id: '2', name: 'Physique', duration: 4),
    Course(id: '3', name: 'Informatique', duration: 5),
  ];
}
