import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            title: const Text("Profile"),
            backgroundColor: Colors.green.shade900,
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 20,right: 20,),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25, left: 25,top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/images/log_in.png"),
                          radius: 40,
                        ),
                        SizedBox(
                          height: 40,
                          width: 180,
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
                                return SizedBox(
                                  height: 300,
                                  child: Column(
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
                                                Text("Profile photo",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 50),
                                              child: SizedBox(
                                                height: 40,
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(5.0)
                                                      ),
                                                      backgroundColor: Colors.green.shade900
                                                  ),
                                                  child: const Text(
                                                    "Select from gallery",
                                                    style: TextStyle(color: Colors.white, fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 50),
                                              child: SizedBox(
                                                height: 40,
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(5.0)
                                                      ),
                                                      backgroundColor: Colors.green.shade900
                                                  ),
                                                  child: const Text(
                                                    "Delete",
                                                    style: TextStyle(color: Colors.white, fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              });
                              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BurningFireScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)
                                ),
                                backgroundColor: Colors.green.shade900
                            ),
                            child: const Text(
                              "Edit profile",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2.5,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Born talent",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2.5,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Learnt talent",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2.5,
                    color: Colors.black,
                  ),
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
                    padding: const EdgeInsets.only(top: 50,right: 20,left: 20),
                    child: SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainUploadScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)
                            ),
                            backgroundColor: Colors.green.shade900
                        ),
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.white, fontSize: 18),
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
