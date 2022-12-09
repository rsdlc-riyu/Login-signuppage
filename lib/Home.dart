import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trial/main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                              'To Friendr',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30),
                            )),
                        Container(
                          height: 600,
                        ),
                      ]))
            ]))),
      ),
    );
  }
}
