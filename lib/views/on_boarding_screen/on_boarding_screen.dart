import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';
import 'package:quiz_app/views/login_screen/login_screen.dart';
import 'package:quiz_app/views/register_screen/register_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List ofCarousalImages = [
    ["assets/images/commuication 1.png", "Interactive Learning"],
    ["assets/images/Group.png", "Dynamic Quizzes for Knowledge Assessment"],
    ["assets/images/Vector.png", "Reward Sysyteam For Motivation"]
  ];

  int dotindex = 0;

  CarouselController carouselController = CarouselController();

  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Stack(
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
                    backgroundColor: Color.fromARGB(83, 144, 168, 255),
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
                backgroundColor: Color.fromARGB(73, 144, 168, 255),
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
                    backgroundColor: Color.fromARGB(64, 144, 168, 255),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                CarouselSlider.builder(
                  carouselController: carouselController,
                  itemCount: ofCarousalImages.length,
                  itemBuilder: (context, index, value) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ofCarousalImages[index][0],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                      aspectRatio: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          dotindex = index;
                        });
                      }),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .08,
                ),
                Center(
                  child: SmoothPageIndicator(
                    effect: const ScaleEffect(
                      activeDotColor: Colors.white,
                      strokeWidth: 3,
                    ),
                    controller: PageController(initialPage: dotindex),
                    count: ofCarousalImages.length,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),

                //sign up container
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        ofCarousalImages[dotindex][1],
                        style: const TextStyle(
                          fontFamily: mainFont,
                          fontSize: 26,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.09,
                      ),

                      //sign up button
                      InkWell(
                        onTap: () {
                          //for navigate to registeration page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const RegisterScreen();
                              },
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          width: MediaQuery.of(context).size.width * .8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: mainColor,
                          ),
                          child: const Center(
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                fontFamily: mainFont,
                                color: Colors.white,
                                fontSize: 23,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already sign in ? ",
                              style: TextStyle(
                                fontFamily: mainFont,
                                color: Color.fromARGB(211, 144, 168, 255),
                                fontSize: 18,
                              )),

                          //log in button
                          InkWell(
                            onTap: () {
                              //for navigate to login page

                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginScreen();
                              }));
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                fontFamily: mainFont,
                                color: mainColor,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
