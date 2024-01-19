import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';
import 'package:quiz_app/views/home_page/home_page.dart';
import 'package:quiz_app/views/login_screen/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final emailKey = GlobalKey<FormState>();
  final usernameKey = GlobalKey<FormState>();
  final passwordKey = GlobalKey<FormState>();

  bool isHide = true;

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
            top: 430,
            right: 100,
            child: CircleAvatar(
              radius: 170,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "SignUp",
                        style: TextStyle(
                          fontFamily: mainFont,
                          fontSize: 30,
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
                              image: AssetImage(
                                  "assets/images/sign_up_gif_quiz_app.gif"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //form 1
                          Form(
                            key: emailKey,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
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
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //form 2
                          Form(
                            key: usernameKey,
                            child: TextFormField(
                              controller: usernameController,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                isDense: true,
                                prefixIcon: const Icon(Icons.person_2_outlined),
                                hintText: "Username",
                                hintStyle: const TextStyle(
                                  fontFamily: mainFont,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your username';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          //form 3
                          Form(
                            key: passwordKey,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              controller: passwordController,
                              obscureText: isHide,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isHide = !isHide;
                                    });
                                  },
                                  icon: !isHide
                                      ? const Icon(Icons.visibility_outlined)
                                      : const Icon(
                                          Icons.visibility_off_outlined),
                                ),
                                isDense: true,
                                prefixIcon:
                                    const Icon(Icons.lock_clock_outlined),
                                hintText: "Password",
                                hintStyle: const TextStyle(
                                  fontFamily: mainFont,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account ? ",
                                style: TextStyle(
                                  fontFamily: mainFont,
                                  color: Color.fromARGB(211, 144, 168, 255),
                                  fontSize: 18,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return LoginScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  "Signin",
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
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () {
                      if (emailKey.currentState!.validate() &&
                          usernameKey.currentState!.validate() &&
                          passwordKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
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
                          "Register",
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
        ],
      ),
    );
  }
}
