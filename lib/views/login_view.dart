import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final scaffoldkey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:scaffoldkey,
      backgroundColor: Colors.pink,

      appBar: AppBar(
        leading: IconButton(onPressed: () {
          scaffoldkey.currentState!.openEndDrawer();
        //  scaffoldkey.currentState!.openDrawer();

        }, icon: Icon(Icons.person)),

        backgroundColor: Colors.indigo,
        title: const Text("debbroto kumar", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 11,
            wordSpacing: 20,
            letterSpacing: 5
        ),),
        centerTitle: true,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.cabin)),
        ],
        elevation: 5.1,
        shadowColor: Colors.green,
        // titleSpacing: 40,
        // bottom: AppBar(
        //   // TAB LAYOUT HERE
        // ),
      ),
      body: Center(child: Text("denbbroto")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("click floatingActionButton");
        },
        elevation: 10,
        tooltip: "add value",
        backgroundColor: Colors.indigo,
        child: Icon(Icons.add, color: Colors.white),
        // shape: CircleBorder(),
        //   shape: OutlineInputBorder(),
        //  shape: RoundedRectangleBorder(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //  floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home", tooltip: "78")
        ],
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.white,
        selectedFontSize: 20,
        showSelectedLabels: true,
        //unselectedItemColor: Colors.white54,
        unselectedItemColor: Colors.white.withOpacity(.4),
        unselectedFontSize: 10,
        currentIndex: 1,
        selectedLabelStyle: TextStyle(color: Colors.red,
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
        onTap: (index) {
          if (index == 0) {
            print(" 0 bottomNavigationBar");
          }
          else if (index == 1) {
            print("1 bottomNavigationBar");
          }
        },

      ),
      drawer: Drawer(
        child: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(child: Text("header")),
            Text("hello"),
            Text("login"),
            Text("Exit"),
          ],

        )
        ),
      ),
      endDrawer: Drawer(
        child: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(child: Text("endDrawer")),
            Text("hello"),
            Text("login"),
            Text("Exit"),
          ],

        )
        ),
      ),


    );
  }
}
