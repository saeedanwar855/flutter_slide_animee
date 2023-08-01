// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../data /model/user_Model.dart';
// import 'bloc.dart';
//
// class UserListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('User List'),
//       ),
//       body: BlocProvider(
//         create: (context) => UserBloc()..fetchUsers(),
//         child: UserList(),
//       ),
//     );
//   }
// }
//
// class UserList extends StatelessWidget {
//   const UserList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Color _getRandomColor() {
//       final random = Random();
//       return Color.fromARGB(
//         255,
//         random.nextInt(256),
//         random.nextInt(256),
//         random.nextInt(256),
//       );
//     }
//
//     return BlocBuilder<UserBloc, List<User>>(
//       builder: (context, users) {
//         return ListView.builder(
//           itemCount: users.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//                 title: Text(users[index].name),
//                 subtitle: Text(users[index].email),
//                 leading: CircleAvatar(
//                   backgroundColor: _getRandomColor(),
//                   child: Text(
//                     "${users[index].id}",
//                     style: const TextStyle(color: Colors.white),
//                   ),
//                 ));
//           },
//         );
//       },
//     );
//   }
// }
