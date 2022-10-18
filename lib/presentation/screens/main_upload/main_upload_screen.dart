import 'package:flutter/material.dart';

import '../burning_fire/burning_fire_screen.dart';
class MainUploadScreen extends StatefulWidget {
  const MainUploadScreen({Key? key}) : super(key: key);

  @override
  State<MainUploadScreen> createState() => _MainUploadScreenState();
}

class _MainUploadScreenState extends State<MainUploadScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            title: const Text("main upload"),
            backgroundColor: Colors.green.shade900,
          ),
          backgroundColor: Colors.grey.shade200,
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              backgroundColor: Colors.white
                          ),
                          child: const Text(
                            "cindrea",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              backgroundColor: Colors.white
                          ),
                          child: const Text(
                            "dharmic",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                          backgroundColor: Colors.white
                      ),
                      child: const Text(
                        "Select from gallery",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter title here",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                          backgroundColor: Colors.white
                      ),
                      child: const Text(
                        "Tag a person",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 130,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/back.jpg",height: 100,width: 170,fit: BoxFit.cover,),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.green.shade900,
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      const Text(
                          "Allow post as mine",
                          style: TextStyle(
                              fontSize: 16,fontWeight: FontWeight.bold)
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BurningFireScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                          backgroundColor: Colors.amber
                      ),
                      child: const Text(
                        "Upload",
                        style: TextStyle(color: Colors.black, fontSize: 18),
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
