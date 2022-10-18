import 'package:demo_project/presentation/screens/forget_password/forget_password_screen.dart';
import 'package:flutter/material.dart';
import '../main_upload/main_upload_screen.dart';
import '../sign_up/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                      "Welcome Back !",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset("assets/images/log_in.png",height: 200,),
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
                    padding: const EdgeInsets.only(top: 50),
                    child: SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainUploadScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)
                            ),
                            backgroundColor: Colors.amber
                        ),
                        child: const Text(
                          "Sign in",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  [
                          InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgetPasswordScreen()));
                              },
                              child: const Text("Forgot Password ?",style: TextStyle(color: Colors.blue,fontSize: 16),)),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text("Already have an account ?",style: TextStyle(fontSize: 16),),
                          const SizedBox(width: 5,),
                          InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
                              },
                              child: const Text("sign up",style: TextStyle(color: Colors.blue,fontSize: 16),))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
