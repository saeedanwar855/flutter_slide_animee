// import 'dart:convert';
//
// import 'package:flutter_test/flutter_test.dart';
// import 'package:http/http.dart' as http;
// import 'package:untitled1/data%20/model/user_Model.dart';
// import 'package:untitled1/presentation/bloc.dart';
//
// // class MockHttpClient extends Mock implements http.Client {}
//
// void main() {
//   group('UserBloc', () {
//     late UserBloc userBloc;
//     late http.Client httpClient;
//
//     setUp(() {
//       httpClient = MockHttpClient();
//       userBloc = UserBloc(httpClient: httpClient);
//     });
//
//     test('emits List<User> when fetchUsers is called successfully', () async {
//       // Arrange
//       final List<Map<String, dynamic>> mockUserJsonList = [
//         {"id": 1, "name": "User 1", "email": "user1@example.com"},
//         {"id": 2, "name": "User 2", "email": "user2@example.com"},
//       ];
//
//       final List<User> expectedUsers = mockUserJsonList.map((json) => User.fromJson(json)).toList();
//
//       when(httpClient.get(Uri.parse('https://jsonplaceholder.typicode.com/users')))
//           .thenAnswer((_) async => http.Response(jsonEncode(mockUserJsonList), 200));
//
//       // Act
//       await userBloc.fetchUsers();
//
//       // Assert
//       expect(userBloc.state, equals(expectedUsers));
//     });
//
//     test('throws Exception when fetchUsers returns an error', () async {
//       // Arrange
//       when(httpClient.get(Uri.parse('https://jsonplaceholder.typicode.com/users')))
//           .thenAnswer((_) async => http.Response('Not Found', 404));
//
//       // Act and Assert
//       expect(() async => await userBloc.fetchUsers(), throwsException);
//     });
//   });
// }
//
