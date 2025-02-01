import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  var name = "suham";
var bottomindex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("Build method");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "Example",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 60,

        elevation: 5.1,
        shadowColor: Colors.green,
        // titleSpacing: 40,
        // bottom: AppBar(
        //   // TAB LAYOUT HERE
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          name = "debbroto";
          setState(() {});
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
      body: Center(child: Text("Hello $name")),
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
        currentIndex: bottomindex,
        selectedLabelStyle: TextStyle(color: Colors.red,
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),

        onTap: (index) {
          setState(() {
            bottomindex=index;
          });
        },

      ),
    );
  }
}
