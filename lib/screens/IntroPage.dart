import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryshop/screens/HomePage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Image.asset("assets/cart.png"),

          //we deliver groceries at your door step
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We deliver \n grocery at your doorstep",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // fresh item everyday
          Text(
            "Groceer gives fresh vegetables and fruits, \n order fresh item from groceer.",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              color: Colors.grey,
            ),
          ),
          Spacer(),
          //get started button
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              decoration: BoxDecoration(
                color: Color(0xff7884DB),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
