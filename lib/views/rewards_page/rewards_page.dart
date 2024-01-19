import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';

class LevelSelectionPage extends StatefulWidget {
  const LevelSelectionPage({super.key});

  @override
  State<LevelSelectionPage> createState() => _LevelSelectionPageState();
}

class _LevelSelectionPageState extends State<LevelSelectionPage> {
  final List levelList = [
    [
      "assets/images/Group 786.png",
      "EASY",
      const Color.fromRGBO(237, 111, 158, 1),
      const Color.fromRGBO(236, 139, 106, 1),
    ],
    [
      "assets/images/Group (1).png",
      "MEDIUM",
      const Color.fromRGBO(85, 113, 236, 1),
      const Color.fromRGBO(6, 190, 254, 1),
    ],
    [
      "assets/images/Group (2).png",
      "HARD",
      const Color.fromRGBO(162, 141, 208, 1),
      const Color.fromRGBO(247, 192, 234, 1),
    ],
  ];

  int selectedIndex = 0;

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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back)),
                    const Text(
                      "Select Level",
                      style: TextStyle(
                        fontFamily: mainFont,
                        fontSize: 37,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_back,
                      color: authPageBackColor,
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          padding: selectedIndex == index
                              ? const EdgeInsets.all(14)
                              : const EdgeInsets.all(17),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 120),
                              padding: const EdgeInsets.all(15),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: LinearGradient(colors: [
                                    levelList[index][2],
                                    levelList[index][3],
                                  ])),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      selectedIndex == index
                                          ? Image.asset(
                                              "assets/images/Vector (2).png")
                                          : Image.asset(
                                              "assets/images/Vector (3).png"),
                                      Text(
                                        levelList[index][1],
                                        style: const TextStyle(
                                          fontFamily: mainFont,
                                          color: Colors.white,
                                          fontSize: 34,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    levelList[index][0],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
