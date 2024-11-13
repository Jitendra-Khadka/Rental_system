import 'package:flutter/material.dart';
import 'package:rental_system/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Welcome", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30)),
        ),
      ),

      body: ListView(
        children: [
          //--------------- container displays services of apps
          Container(
            padding: EdgeInsets.all(20),
            color: Color(0xFFD9D9D9),
            child: const Text(
              "Find Room /House \nor Rent your house /Room",
              style: TextStyle(color: Color(0xFF4AA8D0), fontSize: 25),
            ),
          ),

          //-------------- container which contains two images
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Color(0xFFABCDED),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/homerent.png"),
                SizedBox(height: 40),
                Image.asset("images/roomrent.png"),
              ],
            ),
          ),
          SizedBox(height: 20),

          //--------------- button which navigates to login section
          GestureDetector(
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF69B7EB),
                ),
                child: const Text("Click here to get started",
                style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            }
          ),
        ],
      ),
    );
  }
}
