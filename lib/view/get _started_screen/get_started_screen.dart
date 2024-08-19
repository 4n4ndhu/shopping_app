import 'package:flutter/material.dart';
import 'package:shopping_app/view/home_screen/home_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              )),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
      body: Center(
          child: SafeArea(
              child: Container(
        height: double.infinity,
        width: 400,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 40),
              child: Text(
                textAlign: TextAlign.start,
                "Define yourself in your unique way.",
                style: TextStyle(
                    fontSize: 60, fontWeight: FontWeight.bold, height: 1),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Image.asset(
                  "asset/Supreme-Model-removebg-preview (2).png",
                  fit: BoxFit.fitHeight,
                ))
          ],
        ),
      ))),
    );
  }
}
