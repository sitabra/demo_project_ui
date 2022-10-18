import 'package:flutter/material.dart';
class UserTalentScreen extends StatefulWidget {
  const UserTalentScreen({Key? key}) : super(key: key);

  @override
  State<UserTalentScreen> createState() => _UserTalentScreenState();
}

class _UserTalentScreenState extends State<UserTalentScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
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
                  const Padding(
                    padding:  EdgeInsets.only(top: 80),
                    child:  Text(
                      "Mention your talents and skills",
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
                          contentPadding: const EdgeInsets.only(left: 50),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Born Talents",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 50),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Learnt Skills",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Wants to prove in ?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: value,
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                              const Text(
                                  "Born Talent",
                                  style: TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.bold)
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: value,
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                              const Text(
                                  "Born Talent",
                                  style: TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.bold)
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40,right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: SizedBox(
                            height: 50,
                            width: 120,
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
                                "Skip",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: SizedBox(
                            height: 50,
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)
                                  ),
                                  backgroundColor: Colors.amber
                              ),
                              child: const Text(
                                "Next",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
