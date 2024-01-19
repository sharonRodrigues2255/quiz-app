import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';
import 'package:quiz_app/views/home_page/home_page.dart';
import 'package:quiz_app/views/login_screen/forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final emailKey = GlobalKey<FormState>();
  final passKey = GlobalKey<FormState>();

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
            top: 390,
            right: 100,
            child: CircleAvatar(
              radius: 170,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Login",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Form(
                              key: emailKey,

                              //email textfield
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                validator: (value) {
                                  if (value!.contains("@gmail.com")) {
                                    return null;
                                  } else {
                                    return "enter a valid email";
                                  }
                                },
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
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Form(
                                  key: passKey,

                                  //password textfield
                                  child: TextFormField(
                                    obscureText: isHide,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return null;
                                      } else {
                                        return "enter a strong password";
                                      }
                                    },
                                    controller: passwordController,
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
                                            ? const Icon(
                                                Icons.visibility_outlined)
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
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ForgotPasswordScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "Forgot password?",
                                        style: TextStyle(
                                          fontFamily: mainFont,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () {
                      if (emailKey.currentState!.validate()) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const HomePage();
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
                          "Login",
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
