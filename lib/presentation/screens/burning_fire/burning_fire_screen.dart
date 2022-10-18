import 'package:demo_project/presentation/widgets/burning_fire_list_view.dart';
import 'package:flutter/material.dart';

class BurningFireScreen extends StatefulWidget {
  const BurningFireScreen({Key? key}) : super(key: key);

  @override
  State<BurningFireScreen> createState() => _BurningFireScreenState();
}

class _BurningFireScreenState extends State<BurningFireScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BurningFireUploadScreen()));
            }, icon: const Icon(Icons.upload)),
          ],
          backgroundColor: Colors.green.shade900,
          title: const Text('Burning fire'),
          bottom: const TabBar(
            indicator: BoxDecoration(color: Colors.orange),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: 'ABC1',
              ),
              Tab(
                text: "ABC2",
              ),
              Tab(
                text: "ABC3",
              ),
              Tab(
                text: "ABC4",
              ),
              Tab(
                text: "ABC5",
              ),
              Tab(
                text: "ABC6",
              ),
              Tab(
                text: "ABC7",
              ),
              Tab(
                text: "ABC8",
              ),
              Tab(
                text: "ABC9",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ABC1(),
            ABC2(),
            ABC3(),
            ABC4(),
            ABC5(),
            ABC6(),
            ABC7(),
            ABC8(),
            ABC9(),
          ],
        ),
      ),
    );
  }
}

class ABC1 extends StatefulWidget {
  const ABC1({Key? key}) : super(key: key);

  @override
  State<ABC1> createState() => _ABC1State();
}

class _ABC1State extends State<ABC1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return const BurningFireListView();
            }));
  }
}

class ABC2 extends StatefulWidget {
  const ABC2({Key? key}) : super(key: key);

  @override
  State<ABC2> createState() => _ABC2State();
}

class _ABC2State extends State<ABC2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: const Center(
        child: Text("ABC2"),
      ),
    );
  }
}

class ABC3 extends StatefulWidget {
  const ABC3({Key? key}) : super(key: key);

  @override
  State<ABC3> createState() => _ABC3State();
}

class _ABC3State extends State<ABC3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: const Center(
        child: Text("ABC3"),
      ),
    );
  }
}

class ABC4 extends StatefulWidget {
  const ABC4({Key? key}) : super(key: key);

  @override
  State<ABC4> createState() => _ABC4State();
}

class _ABC4State extends State<ABC4> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text("ABC4"),
      ),
    );
  }
}

class ABC5 extends StatefulWidget {
  const ABC5({Key? key}) : super(key: key);

  @override
  State<ABC5> createState() => _ABC5State();
}

class _ABC5State extends State<ABC5> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text("ABC5"),
      ),
    );
  }
}

class ABC6 extends StatefulWidget {
  const ABC6({Key? key}) : super(key: key);

  @override
  State<ABC6> createState() => _ABC6State();
}

class _ABC6State extends State<ABC6> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text("ABC6"),
      ),
    );
  }
}

class ABC7 extends StatefulWidget {
  const ABC7({Key? key}) : super(key: key);

  @override
  State<ABC7> createState() => _ABC7State();
}

class _ABC7State extends State<ABC7> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text("ABC7"),
      ),
    );
  }
}

class ABC8 extends StatefulWidget {
  const ABC8({Key? key}) : super(key: key);

  @override
  State<ABC8> createState() => _ABC8State();
}

class _ABC8State extends State<ABC8> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text("ABC8"),
      ),
    );
  }
}

class ABC9 extends StatefulWidget {
  const ABC9({Key? key}) : super(key: key);

  @override
  State<ABC9> createState() => _ABC9State();
}

class _ABC9State extends State<ABC9> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text("ABC9"),
      ),
    );
  }
}

class BurningFireUploadScreen extends StatefulWidget {
  const BurningFireUploadScreen({Key? key}) : super(key: key);

  @override
  State<BurningFireUploadScreen> createState() => _BurningFireUploadScreenState();
}

class _BurningFireUploadScreenState extends State<BurningFireUploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: const Text('Burning fire upload'),
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Category",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
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
                        "Drop down",
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
              const SizedBox(height: 80,),
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
                      backgroundColor: Colors.amber
                  ),
                  child: const Text(
                    "Upload",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      )
    );
  }
}

