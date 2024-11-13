import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xFFDADADA),
      ),
      title: Text("someone"),
      subtitle: Text("Greate service"),
    );
  }
}
