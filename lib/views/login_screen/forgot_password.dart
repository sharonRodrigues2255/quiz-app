import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';
import 'package:quiz_app/views/login_screen/otp_verification_page.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final emailKey = GlobalKey<FormState>();

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
              radius: 200,
            ),
          ),
          const Positioned(
            top: 390,
            right: 100,
            child: CircleAvatar(
              radius: 170,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
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
                        icon: Icon(
                          Icons.arrow_back,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Enter email",
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
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/login_gif.gif"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Form(
                        key: emailKey,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.contains("@gmail.com")) {
                              return null;
                            } else {
                              return "enter a valid email";
                            }
                          },
                          controller: _emailcontroller,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            isDense: true,
                            prefixIcon: const Icon(Icons.alternate_email),
                            hintText: "Email",
                            hintStyle: const TextStyle(
                              fontFamily: mainFont,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 180),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              if (emailKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const OtpVerificationPage();
                                    },
                                  ),
                                );
                              }
                            },
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

TextEditingController _emailcontroller = TextEditingController();
