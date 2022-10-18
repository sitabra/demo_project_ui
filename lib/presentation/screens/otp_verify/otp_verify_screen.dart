import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final OtpFieldController otpController = OtpFieldController();
  String currentText = "";
//  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Verification",style: TextStyle(color: Colors.black,fontSize: 18),),
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            },
                icon: Icon(Icons.arrow_back_ios,color: Colors.grey.shade700,)),
            backgroundColor: Colors.grey.shade200,elevation: 0,),
          backgroundColor: Colors.grey.shade200,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Column(
                children: [
                  const SizedBox(height: 80,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 25),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                       const Text(
                          "Enter OTP",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      const SizedBox(height: 20,),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 5),
                            child: PinCodeTextField(
                              appContext: context,
                              pastedTextStyle: TextStyle(
                                color: Colors.green.shade600,
                                fontWeight: FontWeight.bold,
                              ),
                              length: 6,
                              obscureText: true,
                              obscuringCharacter: '*',
                              blinkWhenObscuring: true,
                              animationType: AnimationType.fade,
                              validator: (v) {
                                if (v!.length < 3) {
                                  return "I'm from validator";
                                } else {
                                  return null;
                                }
                              },
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(5),
                                fieldHeight: 50,
                                fieldWidth: 40,
                                activeFillColor: Colors.white,
                              ),
                              cursorColor: Colors.black,
                              animationDuration: const Duration(milliseconds: 300),
                              enableActiveFill: true,
                              errorAnimationController: errorController,
                             // controller: textEditingController,
                              keyboardType: TextInputType.number,
                              boxShadows: const [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  color: Colors.black12,
                                  blurRadius: 10,
                                )
                              ],
                              onCompleted: (v) {
                                debugPrint("Completed");
                              },
                              // onTap: () {
                              //   print("Pressed");
                              // },
                              onChanged: (value) {
                                debugPrint(value);
                                setState(() {
                                  currentText = value;
                                });
                              },
                              beforeTextPaste: (text) {
                                debugPrint("Allowing to paste $text");
                                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                return true;
                              },
                            )),
                        const SizedBox(height: 20,),
                        const Text(
                          "Resend OTP",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50,),
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            elevation: 3,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                )),
                            context: context, builder: (context) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 150, right: 150, top: 15),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.amber,
                                      ),
                                  height: 8,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 15,),
                                    Row(
                                      children: const [
                                         Text("Change Password",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    SizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText: "Enter your password",
                                              suffixIcon:  Icon(Icons.remove_red_eye_rounded,color: Colors.grey.shade700,),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide.none,
                                              )
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText: "Re-enter your password",
                                              suffixIcon:  Icon(Icons.remove_red_eye_rounded,color: Colors.grey.shade700,),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide.none,
                                              )
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: SizedBox(
                                        height: 55,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5.0)
                                              ),
                                              backgroundColor: Colors.amber
                                          ),
                                          child: const Text(
                                            "Change Password",
                                            style: TextStyle(color: Colors.black, fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                          backgroundColor: Colors.amber
                      ),
                      child: const Text(
                        "Verify",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            )
            ),
          ),
        );
  }
}
