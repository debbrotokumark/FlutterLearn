import 'package:flutter/material.dart';

class Class12 extends StatefulWidget {
  const Class12({super.key});

  @override
  State<Class12> createState() => _Class12State();
}

class _Class12State extends State<Class12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "Class 12",
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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            // width: 500,
            width: double.infinity,
            height: 70,
            child: TextButton(
              //    onPressed: null, // button disable hye jabe
              onPressed: () {},
              // onLongPress: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  side: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                  elevation: 5,
                  shadowColor: Colors.cyan,
                  padding: EdgeInsets.all(30),
                  disabledBackgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      // borderRadius: BorderRadius.zero
                      borderRadius: BorderRadius.circular(10))),
              child: Text("Button", style: TextStyle(fontSize: 22)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  child: Text("ElevatedButton"))),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              child: IconButton(
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  icon: Icon(Icons.subscriptions))),
          SizedBox(
            height: 10,
          ),
          Stack(
              //   alignment: Alignment.center,
              children: [
                Container(
                  height: 100,
                  width: 300,
                  color: Colors.green,
                ),
                Positioned(
                  bottom: 5,
                  left: 10,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                ),
                Text(
                  "Bangladesh",
                  style: TextStyle(color: Colors.white),
                )
              ]),
          ListTile(
            //  leading: Icon(Icons.account_circle_outlined),
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              // radius: 2,
            ),
            title: Text("Debbroto"),
            subtitle: Text("Hello brothers"),
            trailing: Text("Today"),
            contentPadding: EdgeInsets.all(15),
            // trailing: Column(
            //   children: [Text("2"),Text("Today")],
            // ),
          ),
          RichText(
            text: TextSpan(text: "By signing up I agreee with", children: [
              TextSpan(
                text: " ",
              ),
              TextSpan(
                  text: "terms and conditions",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold))
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          ExpansionTile(
            title: Text("Are you available for custom work?"),
            onExpansionChanged: (value) {
              print(value);
            },
            leading: Icon(Icons.account_circle_outlined),
            iconColor: Colors.blue,
            collapsedTextColor: Colors.red,
            backgroundColor: Colors.green,
            textColor: Colors.yellow,
            children: [
              Text("Yes i available for any kind of customer"),
            ],
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.red,
            color: Colors.green,
            strokeWidth: 10,
            // value: .1,
          ),
          SizedBox(
            height: 10,
          ),
          LinearProgressIndicator(
            color: Colors.red,
            backgroundColor: Colors.blue,
          minHeight: 10,
           // value: .7,
            borderRadius: BorderRadius.circular(10),
          )
        ],
      ),
    );
  }
}
