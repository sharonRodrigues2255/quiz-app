import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';
import 'package:quiz_app/views/login_screen/create_new_password.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final TextEditingController otptextController1 = TextEditingController();
  final TextEditingController otptextController2 = TextEditingController();
  final TextEditingController otptextController3 = TextEditingController();
  final TextEditingController otptextController4 = TextEditingController();

  final focus2 = FocusNode();
  final focus3 = FocusNode();
  final focus4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authPageBackColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Verification",
                style: TextStyle(
                  fontFamily: mainFont,
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage(
                        "assets/images/verification_gif_quiz_app.gif"),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                    width: 50,

                    //textfiel 1
                    child: TextField(
                      style: const TextStyle(
                        fontFamily: mainFont,
                        fontSize: 24,
                      ),
                      keyboardType: TextInputType.datetime,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          focus2.requestFocus();
                        }
                      },
                      autofocus: true,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 80,
                    width: 50,

                    //textfield 2
                    child: TextField(
                      style: const TextStyle(
                        fontFamily: mainFont,
                        fontSize: 24,
                      ),
                      keyboardType: TextInputType.datetime,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          focus3.requestFocus();
                        }
                      },
                      focusNode: focus2,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 80,
                    width: 50,

                    //textfild 3
                    child: TextField(
                      style: const TextStyle(
                        fontFamily: mainFont,
                        fontSize: 24,
                      ),
                      keyboardType: TextInputType.datetime,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          focus4.requestFocus();
                        }
                      },
                      focusNode: focus3,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 80,
                    width: 50,

                    //textfild 4
                    child: TextField(
                      style: const TextStyle(
                        fontFamily: mainFont,
                        fontSize: 24,
                      ),
                      keyboardType: TextInputType.datetime,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const CreateNewPassword();
                            },
                          ),
                        );
                      },
                      focusNode: focus4,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 190,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: mainColor,
                  ),
                  child: const Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontFamily: mainFont,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
