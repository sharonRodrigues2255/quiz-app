import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';
import 'package:quiz_app/views/on_boarding_screen/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const OnBoardingScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6A5AE0),
      body: Stack(
        children: [
          const Positioned(
            top: 20,
            left: 270,
            child: CircleAvatar(
              radius: 140,
              backgroundColor: Color.fromARGB(127, 144, 168, 255),
              child: CircleAvatar(
                backgroundColor: Color(0xFF6A5AE0),
                radius: 135,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Color.fromARGB(127, 144, 168, 255),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 220,
            left: 100,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(127, 144, 168, 255),
            ),
          ),
          const Positioned(
            top: 600,
            right: 100,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Color.fromARGB(127, 144, 168, 255),
            ),
          ),
          const Positioned(
            top: 580,
            right: 230,
            child: CircleAvatar(
              radius: 140,
              backgroundColor: Color.fromARGB(127, 144, 168, 255),
              child: CircleAvatar(
                backgroundColor: Color(0xFF6A5AE0),
                radius: 135,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Color.fromARGB(127, 144, 168, 255),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(appLogo), fit: BoxFit.contain),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Challenger",
                  style: TextStyle(
                    fontFamily: mainFont,
                    fontSize: 27,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
