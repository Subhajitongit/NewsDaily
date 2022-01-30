// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(
            'https://images.unsplash.com/photo-1642788174088-9d42de589c8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
          backgroundColor: Colors.black45,
          body: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0, left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("Log",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.white,
                              )),
                          Text("in",
                              style: TextStyle(
                                  color: Colors.lightBlueAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12, top: 18, bottom: 18),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Enter your Email address",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Enter your OTP",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.lightBlueAccent)),
                      child: Text("Verify OTP"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                      child: Text("Or",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 18)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.lightBlueAccent)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                                'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',
                                width: 23.0,
                                height: 23.0),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Sign in with Google")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Text("Powered by", style: TextStyle(color: Colors.grey)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("News",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            )),
                        Text("Daily",
                            style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
