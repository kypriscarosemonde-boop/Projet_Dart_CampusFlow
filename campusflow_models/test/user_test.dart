import'package:campusflow_models/models/user.dart';
import 'package:test/test.dart';
void main() {

  //Test 1 : copywith
  test('copyWith should create a new User with updated fields', () {
    final user1 = User(id: '1', name: 'Alice', email: 'alice@example.com');
    final user2 = user1.copyWith(name: 'Bob');
    expect(user2.id, '1');
    expect(user2.name, 'Bob');
    expect(user2.email, 'alice@example.com');
    expect(user1.name, 'Alice');
  });

  //Test 2 : fromJson
    test('fromJson should create a User from JSON', () {
        final json = {'id': '2', 'name': 'Charlie', 'email': 'charlie@example.com'};
        final user = User.fromJson(json);
        expect(user.id, '2');
        expect(user.name, 'Charlie');
        expect(user.email, 'charlie@example.com');
    });

    //Test 3 : erreur attendue
    test('fromJson should throw an error for invalid JSON', () {
        final json = {'id': 'abc', 'name': 'David'};
        expect(() => User.fromJson(json), throwsA(isA<TypeError>()));
    }); 
}