import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Quiz App",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text("Welcome to quiz app"),
            SizedBox(
              height: 45,
            ),
            Container(
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width * .8,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width * .8,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)),
            )
          ],
        ),
      ),
    );
  }
}
