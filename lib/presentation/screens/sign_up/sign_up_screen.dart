import 'package:demo_project/presentation/screens/user_talents/user_talent_screen.dart';
import 'package:flutter/material.dart';

import '../sign_in/sign_in_screen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 20,right: 20,),
              child: Column(
                children: [
                  const Padding(
                    padding:  EdgeInsets.only(top: 50),
                    child:  Text(
                      "Create An Account",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    "Lorem janfdljnajfnajfaf",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Full Name",
                          prefixIcon: const Icon(Icons.person,color: Colors.black,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Email",
                          prefixIcon:  Icon(Icons.email_rounded,color: Colors.grey.shade700,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Mobile number",
                          prefixIcon: const Icon(Icons.phone_android,color: Colors.black,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter password",
                          prefixIcon: Icon(Icons.lock,color: Colors.grey.shade700,),
                          suffixIcon: const Icon(Icons.remove_red_eye_rounded,color: Colors.black,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Re-enter password",
                          prefixIcon: Icon(Icons.lock,color: Colors.grey.shade700,),
                          suffixIcon: const Icon(Icons.remove_red_eye_rounded,color: Colors.black,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UserTalentScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)
                            ),
                            backgroundColor: Colors.amber
                        ),
                        child: const Text(
                          "Register",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Already have an account ?",style: TextStyle(fontSize: 16),),
                      const SizedBox(width: 5,),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInScreen()));
                        },
                          child: const Text("sign in",style: TextStyle(color: Colors.blue,fontSize: 16),))
                    ],
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
