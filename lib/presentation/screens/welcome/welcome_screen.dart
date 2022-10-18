import 'package:flutter/material.dart';

import '../sign_in/sign_in_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/welcome.png"),
            const Text(
              "Introduction splash screen",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10,),
            const Text(
              "Welcome to yagnena\nkalpatha dolor sit amet,\nconsectetur adipiscing elit.\nElit gravida.",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 150),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)
                      ),
                      backgroundColor: Colors.amber
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
