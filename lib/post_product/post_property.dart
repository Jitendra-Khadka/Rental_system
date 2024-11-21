import 'package:flutter/material.dart';
import 'package:rental_system/home/detail.dart';
import 'package:rental_system/post_product/property_info.dart';

class PostProperty extends StatelessWidget {
  const PostProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 75), // using sizedbox to make ui look similar to prototype
           Center(
             child: Container(
               height: 210,
               width: 355,
               color: const Color(0xFFD9D9D9),
               child: const Center(
                 child: Text("Drag and drop your image" , style: TextStyle( fontSize: 18, fontWeight: FontWeight.w500)),
               ),
             ),
           ),

          const SizedBox(height: 30),

          Center(
            child: Container(
              height: 65,
              width: 245,
              color: const Color(0xFFD9D9D9),
              child: const Center(
                child: Text("Choose from file", style: TextStyle( fontSize: 17, fontWeight: FontWeight.w500)),
              ),
            ),
          ),

          const SizedBox(height: 30),

          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Detail())); // need to make update over here.
              },
              child: const Text("Take photo", style: TextStyle( fontSize: 18, fontWeight: FontWeight.w500)),
            ),
          ),

          const SizedBox(height: 130),

          PropertyInfo(label_name: "Price"),
          PropertyInfo(label_name: "Location"),
          PropertyInfo(label_name: "Facilites"),

          SizedBox(height: 30),

        ],
      ),
    );
  }
}
