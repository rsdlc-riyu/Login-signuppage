import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trial/Home.dart';
import 'package:trial/signup.dart';

import 'forgotpassword.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool terms = false;

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
                              'Sign in to',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 25.0),
                            child: const Text(
                              'Friendr Now !',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            )),
                        Container(
                          height: 20,
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(
                              left: 30.0,
                            ),
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
                            padding: const EdgeInsets.only(left: 25),
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
                        Row(
                          children: [
                            Container(
                              width: 240,
                              child: CheckboxListTile(
                                title: Text(
                                  'Remember me',
                                ),
                                value: terms,
                                onChanged: (value) {
                                  setState(() {
                                    terms = value!;
                                  });
                                },
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                            ),
                            forgetPassword(context),
                          ],
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
                                  'Login',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(color: Colors.grey),
                            children: [
                              TextSpan(
                                text: 'Register',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignUp(),
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

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: 130,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => forgot())),
      ),
    );
  }
}
