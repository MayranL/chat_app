import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  const ChatBubble({super.key, required this.message, required this.isCurrentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isCurrentUser ? Colors.green.shade700 : Colors.grey.shade700
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Text(message, style: TextStyle(color: Colors.white),),
    );
  }
}
