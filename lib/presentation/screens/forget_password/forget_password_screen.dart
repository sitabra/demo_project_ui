import 'package:flutter/material.dart';

import '../otp_verify/otp_verify_screen.dart';
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Forgot Password ?",style: TextStyle(color: Colors.black,fontSize: 18),),
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            },
                icon: Icon(Icons.arrow_back_ios,color: Colors.grey.shade700,)),
            backgroundColor: Colors.grey.shade200,elevation: 0,),
          backgroundColor: Colors.grey.shade200,
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 20,right: 20,),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset("assets/images/forget_pass.png",height: 200,),
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(top: 50),
                    child:  Text(
                      "Please enter your Registered email\nto receive a verification code",textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter your Email",
                          prefixIcon:  Icon(Icons.email_rounded,color: Colors.grey.shade700,),
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
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtpVerifyScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)
                            ),
                            backgroundColor: Colors.amber
                        ),
                        child: const Text(
                          "Send verification code",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
