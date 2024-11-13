import 'package:flutter/material.dart';

class DisplayProperty extends StatelessWidget {
  List<Map<String, String>> property_collection;
  DisplayProperty({super.key, required this.property_collection});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for(Map<String, String>item in property_collection)...{
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 275,
                width: 225,
                decoration: BoxDecoration(
                  color: const Color(0xFFDADADA),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 170,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("images/home.png", fit: BoxFit.cover)
                      ),
                    ),
                    Positioned(
                      top: 178,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${item["service"]}"),
                            Text("${item["location"]}"),
                            Text("price: ${item["price"]}"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          }
        ],
      ),
    );
  }
}
