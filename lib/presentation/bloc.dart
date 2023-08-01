import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

import '../data /model/user_Model.dart';

class UserBloc extends Cubit<List<User>> {
  UserBloc() : super([]);

  Future<void> fetchUsers() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        final List<User> users =
            data.map((userJson) => User.fromJson(userJson)).toList();
        emit(users);
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('Failed to load users: $e');
    }
  }
}
