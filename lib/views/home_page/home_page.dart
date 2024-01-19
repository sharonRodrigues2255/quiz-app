import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';
import 'package:quiz_app/views/rewards_page/rewards_page.dart';
import 'package:quiz_app/views/rewards_screen/rewards_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List ofFirstContainer = [
    ["assets/images/level_selection_gif.gif", "LEVEL", const Color(0xFF75BAF1)],
    ["assets/images/rewards_gif_quiz.gif", "REWARDS", const Color(0xFFF35453)],
  ];

  List ofSecondPages = [
    ["assets/images/eco_gif.gif", "INDIAN ECONOMIC", const Color(0xFFB375F7)],
    ["assets/images/ev_gif.gif", "MICRO\nECO", const Color(0xFFFDBE6C)],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authPageBackColor,
      body: Stack(
        children: [
          const Positioned(
            left: 230,
            bottom: 390,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(64, 144, 168, 255),
              radius: 200,
            ),
          ),
          const Positioned(
            top: 390,
            right: 100,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(64, 144, 168, 255),
              radius: 170,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 10,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/Ellipse 186.png"),
                      radius: 30,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning !",
                          style: TextStyle(
                            fontFamily: mainFont,
                            color: Color(0xFF9D9AA0),
                          ),
                        ),
                        Text(
                          "User name",
                          style: TextStyle(
                            fontFamily: mainFont,
                            fontSize: 25,
                            color: Color(0xFF3B3350),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xFF41C88E),
                      ),
                      child: const Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/images/point_gif_quiz_app.gif"),
                          ),
                          Text(
                            "2000",
                            style: TextStyle(
                              fontFamily: mainFont,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset("assets/images/Vector (1).png"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    ofFirstContainer.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      //containers for rewards and level
                      child: InkWell(
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const LevelSelectionPage();
                            }));
                          } else if (index == 1) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const RewardScreen();
                            }));
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: ofFirstContainer[index][2],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                foregroundImage: AssetImage(
                                  ofFirstContainer[index][0],
                                ),
                                radius: 43,
                              ),
                              Text(
                                ofFirstContainer[index][1],
                                style: const TextStyle(
                                  fontFamily: mainFont,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Select Category",
                  style: TextStyle(
                    fontFamily: mainFont,
                    fontSize: 28,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    ofSecondPages.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),

                      //containers for categories
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.4,
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: ofSecondPages[index][2],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              foregroundImage: AssetImage(
                                ofSecondPages[index][0],
                              ),
                              radius: 43,
                            ),
                            Text(
                              ofSecondPages[index][1],
                              style: const TextStyle(
                                fontFamily: mainFont,
                                fontSize: 24,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Authors",
                            style: TextStyle(
                              fontFamily: mainFont,
                              fontSize: 27,
                            ),
                          ),
                          Text(
                            "View all",
                            style: TextStyle(
                              fontFamily: mainFont,
                              color: mainColor,
                              fontSize: 24,
                            ),
                          )
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(4, (index) {
                            return const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    foregroundImage: AssetImage(
                                        "assets/images/Ellipse 186.png"),
                                    radius: 38,
                                  ),
                                  Text(
                                    "Users Name",
                                    style: TextStyle(
                                      fontFamily: mainFont,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                        ),
                      )
                    ],
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
