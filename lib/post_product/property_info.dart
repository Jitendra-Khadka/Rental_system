import 'package:flutter/material.dart';

class PropertyInfo extends StatelessWidget {
  PropertyInfo({super.key, required this.label_name});
  String label_name;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$label_name", style: const TextStyle( fontSize: 18, fontWeight: FontWeight.w500)),
          const TextField(
            minLines: 3,
            maxLines: 10,
            decoration: InputDecoration(
              fillColor: const Color(0xFFD9D9D9),
              filled: true,
              border: InputBorder.none,

            ),
          ),
        ],
      ),

    );
  }
}
