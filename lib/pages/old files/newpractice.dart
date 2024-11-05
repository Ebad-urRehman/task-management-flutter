import 'package:flutter/material.dart';

class newpractice extends StatelessWidget {
  const newpractice({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Row(
//         children: [
//           const CircleAvatar(
//             radius: 30,
//             backgroundColor: Colors.yellow,
//           ),
//           const SizedBox(
//             width: 30,
//           ),
//           Container(
//             height: 50,
//             child: const Column(
//               children: [Text('username'), Text('Usermessage')],
//             ),
//           ),
//           const SizedBox(
//             width: 50,
//           ),
//           const Text('5:00pm')
//         ],
//       )),
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(top: 20, bottom: 20),
        )
      ],
    ));
  }
}

// defining functions

