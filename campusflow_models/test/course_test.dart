import 'package:campusflow_models/models/course.dart';
import 'package:test/test.dart';
void main() {

    //Test 1 : copywith
    test('copyWith should create a new Course with updated fields', () {
        final course1 = Course(id: '1', name: 'Mathématiques', duration: 3);
        final course2 = course1.copyWith( duration: 4);
        expect(course2.id, '1');
        expect(course2.name, 'Mathématiques');  
        expect(course2.duration, 4);

        expect(course1.duration, 3);
    });

    //Test 2 : fromJson
    test('fromJson should create a Course from JSON', () {
        final json = {'id': '2', 'name': 'Physique', 'duration': 4};
        final course = Course.fromJson(json);
        expect(course.id, '2');
        expect(course.name, 'Physique');
        expect(course.duration, 4);
    });

    //Test 3 : erreur attendue
    test('fromJson should throw an error for invalid JSON', () {
        final json = {'id': 'abc', 'name': 'Informatique'};
        expect(() => Course.fromJson(json), throwsA(isA<TypeError>()));
    });
}


    


  