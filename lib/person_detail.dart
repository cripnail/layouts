// import 'package:flutter/material.dart';
// import 'package:responsive_adaptive/persons.dart';
//
// class PersonDetail extends StatelessWidget {
//   const PersonDetail({Key? key, required this.person}) : super(key: key);
//   final Person person;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Expanded(
//             flex: 3,
//             child: Center(child: Image.asset(person.picture)),
//           ),
//           Expanded(
//             flex: 2,
//             child: Column(
//               children: [
//                 const SizedBox(height: 24),
//                 Text(
//                   person.title,
//                   style: const TextStyle(fontSize: 20),
//                 ),
//                 Text(
//                   person.email,
//                   style: const TextStyle(fontSize: 14, color: Colors.grey),
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 Text(
//                   person.department,
//                   style: const TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   person.jobTitle,
//                   style: const TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//               child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 person.grade.toString(),
//                 style: const TextStyle(fontSize: 20, color: Colors.green),
//               ),
//             ],
//           ))
//         ],
//       ),
//     );
//   }
// }
