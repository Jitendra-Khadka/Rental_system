import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({super.key});

  Map<String, String> detail_data = { // prototype of detail
    "Room": "one room with separate bathroom",
    "Location": "patan  Lalitpur",
    "Price": '20k per month',
    "Phone no": "01-245555"
  };

  double? font_size = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFB0D3E6),
        child: ListView(
          children: [
            Image.asset("images/home.png", fit: BoxFit.cover, height: 400),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(13),
              child:  Text("Details", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: font_size))
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: Colors.black,
            ),

            Padding(
              padding: const EdgeInsets.all(13),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Room: ${detail_data["Room"]}", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: font_size)),
                  Text("Location: ${detail_data["Location"]}", style:  TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: font_size)),
                  Text("Price: ${detail_data["Price"]}", style:  TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: font_size)),
                  Text("Phone no: ${detail_data["Phone no"]}", style:  TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: font_size)),
                  Text("Facilites", style:  TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: font_size)),

                  const SizedBox(height: 30),

                  Center( // this is a button
                    child: Container(
                      color: const Color(0xFFD9D9D9),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                          child: Text("Chat with owner", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: font_size)),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  Center( // this is also a button
                    child: Container(
                      color: const Color(0xFFD9D9D9),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text("Book now", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: font_size)),
                      ),
                    ),
                  ),

                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
