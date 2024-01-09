// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// class ChatBubble extends StatelessWidget {
//   final String message;
//   final bool isCurrentUser;
//   final Timestamp timestamp;
//
//   const ChatBubble(
//       {super.key,
//       required this.message,
//       required this.isCurrentUser,
//       required this.timestamp});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           color: isCurrentUser ? Colors.green.shade700 : Colors.grey.shade700),
//       padding: const EdgeInsets.all(16),
//       margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             message,
//             style: TextStyle(color: Colors.white),
//           ),
//           Text(
//               style: TextStyle(
//                   color: Theme.of(context).colorScheme.background,
//                   fontSize: 11),
//               '${timestamp.toDate().hour}:${timestamp.toDate().minute}'),
//         ],
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;
  final Timestamp timestamp;

  const ChatBubble(
      {Key? key,
        required this.message,
        required this.isCurrentUser,
        required this.timestamp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isCurrentUser ? Colors.green.shade700 : Colors.grey.shade700,
        ),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end, // Alignement à droite
          children: [
            Text(
              message,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '${timestamp.toDate().hour}:${timestamp.toDate().minute}',
              style: TextStyle(
                color: Theme.of(context).colorScheme.background,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

