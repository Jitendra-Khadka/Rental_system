import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import "package:rental_system/home/home_page.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();

  void navigate(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFD3EDF0),
        padding: const EdgeInsets.only(top: 150,left: 20, right: 20),
        child: Column(
          children: [
            // creating all the textfield
            textfield_template("Email", email),
            const SizedBox(height: 50),
            textfield_template("Password", password),
            const SizedBox(height: 50),
            textfield_template("Confirm Password", confirm_password),
            const SizedBox(height: 50),

            // button section this side
            button_template("Sign Up", navigate, Color(0xFF4AA8D0)),
            const SizedBox(height: 10),
            const Center(
              child: Text("OR", style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 10),
            button_template("Continue with Google", (){}, Color(0xFFD9D9D9)),

            // Question section
            const SizedBox(height: 40),
            RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: TextStyle(color: Colors.black, fontSize: 17),
                children: <TextSpan>[
                  TextSpan(
                    text: "Log in ",
                    style: TextStyle(color: Colors.red),
                    recognizer: TapGestureRecognizer()
                      ..onTap = (){},
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

// textfield template which is used to create mutliple text field
TextField textfield_template(hint_name,controller){
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      hintText: hint_name,
      fillColor: Colors.white,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Colors.white),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
  );
}

// template for the button for this page
Widget button_template(name,func, color){
  return GestureDetector(
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Text(
          name,
        style: TextStyle(fontSize: 25),
      ),
    ),
    onTap: func
  );
}
