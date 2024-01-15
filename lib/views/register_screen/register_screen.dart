import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: Icon(Icons.alternate_email),
                          hintText: "Email",
                          hintStyle: TextStyle(),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: Icon(Icons.person_2_outlined),
                          hintText: "Username",
                          hintStyle: TextStyle(),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: Icon(Icons.lock_clock_outlined),
                          hintText: "Password",
                          hintStyle: TextStyle(),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  "Signup",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
