import 'package:flutter/material.dart';

import '../screens/profile/profile_screen.dart';
class BurningFireListView extends StatefulWidget {
  const BurningFireListView({Key? key}) : super(key: key);

  @override
  State<BurningFireListView> createState() => _BurningFireListViewState();
}

class _BurningFireListViewState extends State<BurningFireListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8,bottom: 2),
      child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15, left: 15,bottom: 3),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfileScreen()));
                                    },
                                    child:  const CircleAvatar(
                                      backgroundImage:
                                      AssetImage("assets/images/log_in.png"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "user name here",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 18),
                                        ),
                                        Text(
                                          "Born  || Learnt skill",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 15),
                                        ),
                                        Text(
                                          "1 day ago",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.only(bottom: 6,top: 3),
                              child:  Text(
                                "Title of the project starts from here..and the title will remain in two line and show rest of the part in ellipse more...",
                                style: TextStyle(color: Colors.black, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Image.asset("assets/images/list_img.jpg"),
                    Positioned(
                      top: 15,
                      right: 0,
                      child: Row(
                        children: const [
                          Text("22k views"),
                          SizedBox(width: 15,),
                          Icon(Icons.remove_red_eye_outlined),
                          SizedBox(width: 15,),
                          Icon(Icons.more_horiz),
                          SizedBox(width: 5,),
                        ],
                      ),
                    )
                  ],
                ),
                Container(height: 10,color: Colors.white,),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children:  [
                          InkWell(
                              onTap: (){},
                              child: const Icon(Icons.account_tree_outlined)),
                          const Text("Like")
                        ],
                      ),
                      Column(
                        children:  [
                          InkWell(
                              onTap: (){},
                              child: const Icon(Icons.smart_display)),
                          const Text("Support")
                        ],
                      ),
                      Column(
                        children:  [
                          InkWell(
                              onTap: (){},
                              child: const Icon(Icons.comment)),
                          const Text("Comment")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
