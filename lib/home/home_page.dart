import 'package:flutter/material.dart';
import 'package:rental_system/home/display_property.dart';
import 'package:rental_system/home/review.dart';
import 'package:rental_system/post_product/post_property.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  TextEditingController search_property = TextEditingController();
  List<Map<String, String>> recent_update = [
    {"service": "flat on rent", "location": "Patan lalitpur", "price": "20k per month"},
    {"service": "flat on rent", "location": "Patan lalitpur", "price": "20k per month"},
    {"service": "flat on rent", "location": "Patan lalitpur", "price": "20k per month"},
    {"service": "flat on rent", "location": "Patan lalitpur", "price": "20k per month"}
  ];
  List<Map<String, String>> most_popular = [
    {"service": "flat on rent", "location": "Patan lalitpur", "price": "20k per month"},
    {"service": "flat on rent", "location": "Patan lalitpur", "price": "20k per month"},
    {"service": "flat on rent", "location": "Patan lalitpur", "price": "20k per month"},
    {"service": "flat on rent", "location": "Patan lalitpur", "price": "20k per month"}
  ];


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
      child: Scaffold(
        body: Container(
          color: const Color(0xFFD3EDF0),
          child: ListView(
            children: [
              Container(
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      child: Image.asset("images/homerent.png", fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: TextField(
                          controller: search_property,
                          decoration: InputDecoration(
                            hintText: "Search",
                            fillColor: Colors.white,
                            filled: true,

                            hintStyle: const TextStyle(fontWeight: FontWeight.w600),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.black, width: 2),
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:  EdgeInsets.all(15),
                child:  Text("Recently Updated", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),

              DisplayProperty(property_collection:recent_update),

              const Padding(
                padding:  EdgeInsets.all(15),
                child:  Text("Most popular", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),

              DisplayProperty(property_collection: most_popular),

              const SizedBox(height: 15),
              const Padding(
                padding:  EdgeInsets.all(15),
                child:  Text("What other's think about us", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),

              const Review(),
              const Review(),
              const Review(),
              const Review(),

              const Padding(
                padding:  EdgeInsets.all(15),
                child:  Text("Share your thoughts? ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),

              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                child:  Text("Report", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),

              Container(
                height: 70,
                color: Color(0xFFD9D9D9),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Home", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

                    GestureDetector(
                      child: Text("Add", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PostProperty()));
                      }
                    ),

                    const Text("Category", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const Text("Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


