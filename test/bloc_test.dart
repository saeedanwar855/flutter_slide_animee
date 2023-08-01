// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:your_project_name_here/your_cubit_file.dart'; // Replace with your actual file containing the DynamicListCubit class
//
// void main() {
//   group('DynamicListCubit', () {
//     // Test the initial state
//     blocTest<DynamicListCubit, List<dynamic>>(
//       'emits [] when created',
//       build: () => DynamicListCubit(),
//       expect: () => [],
//     );
//
//     // Test adding an item
//     blocTest<DynamicListCubit, List<dynamic>>(
//       'emits [countryModel, userModel] when addItem is called',
//       build: () => DynamicListCubit(),
//       act: (cubit) {
//         cubit.addItem({
//           'id': 1,
//           'name': 'United Arab Emirates',
//         });
//
//         cubit.addItem({
//           'id': 1,
//           'user_name': 'Bug',
//         });
//       },
//       expect: () => [
//         {
//           'id': 1,
//           'name': 'United Arab Emirates',
//         },
//         {
//           'id': 1,
//           'user_name': 'Bug',
//         },
//       ],
//     );
//
//     // Test removing an item
//     blocTest<DynamicListCubit, List<dynamic>>(
//       'emits [countryModel] when removeItem is called',
//       build: () => DynamicListCubit(),
//       seed: () => [
//         {
//           'id': 1,
//           'name': 'United Arab Emirates',
//         },
//         {
//           'id': 1,
//           'user_name': 'Bug',
//         },
//       ],
//       act: (cubit) {
//         cubit.removeItem({
//           'id': 1,
//           'user_name': 'Bug',
//         });
//       },
//       expect: () => [
//         {
//           'id': 1,
//           'name': 'United Arab Emirates',
//         },
//       ],
//     );
//   });
// }
