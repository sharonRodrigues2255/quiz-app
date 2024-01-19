import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authPageBackColor,
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("assets/images/Group 794.png"),
          ),
          Text(
            "REWARDS",
            style: TextStyle(
              fontFamily: mainFont,
              color: Colors.black,
              fontSize: 34,
            ),
          ),
          Column(
            children: List.generate(2, (index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                
              );
            }),
          )
        ],
      ),
    );
  }
}
