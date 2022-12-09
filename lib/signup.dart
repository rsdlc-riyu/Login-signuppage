import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trial/Home.dart';
import 'package:trial/main.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
                child: Column(children: [
              Container(
                  height: 680,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 5,
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 25.0),
                            child: const Text(
                              'Welcome !',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 25.0),
                            child: const Text(
                              'Sign up to',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 25.0),
                            child: const Text(
                              'Friendr and get in touch with the virtual world now!',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 22),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 25.0),
                            child: const Text(
                              'Email',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            )),
                        Container(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter your email',
                            ),
                          ),
                        ),
                        Container(
                          height: 5,
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 25.0),
                            child: const Text(
                              'User name',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            )),
                        Container(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextField(
                            controller: nameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter your user name',
                            ),
                          ),
                        ),
                        Container(
                          height: 5,
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: const Text(
                              'Password',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            )),
                        Container(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextField(
                            obscureText: true,
                            controller: passwordController,
                            decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye_sharp),
                              border: OutlineInputBorder(),
                              labelText: 'Enter your Password',
                            ),
                          ),
                        ),
                        Container(
                          height: 5,
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: const Text(
                              'Confirm Password',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            )),
                        Container(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextField(
                            obscureText: true,
                            controller: confirmpasswordController,
                            decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye_sharp),
                              border: OutlineInputBorder(),
                              labelText: 'Confirm your Password',
                            ),
                          ),
                        ),
                        Container(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ));
                            },
                            child: Container(
                              padding: EdgeInsets.all(17),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  'Register',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 5,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(color: Colors.grey),
                            children: [
                              TextSpan(
                                text: 'Register',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MyStatefulWidget(),
                                        ));
                                  },
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          height: 5,
                        ),
                      ]))
            ]))),
      ),
    );
  }
}
