import 'package:flutter/material.dart';

class Class10 extends StatefulWidget {
  const Class10({super.key});

  @override
  State<Class10> createState() => Class10State();
}

class Class10State extends State<Class10> {
  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Text("deb"),
            Text("suham"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Him"), Text("Taposh")],
            ),
            Container(
                width: 100,
                height: 100,
                // color: Colors.pink,  decoration use korle color baire use kra jabe na
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.green],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                    ),
                    //   borderRadius: BorderRadius.circular(10),
                    //    borderRadius: BorderRadius.only(
                    //        bottomRight: Radius.circular(10),
                    //        topLeft: Radius.circular(10)
                    //
                    //
                    //    ),

                    border: Border.all(color: Colors.pink, width: 2 // default 1
                    ),
                    //  shape: BoxShape.circle, // shap use korle borderRadius rakha jabe na
                    shape: BoxShape.rectangle,
                    // shap use korle borderRadius rakha jabe na

                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 20,
                          offset: Offset(0, 4)),
                      BoxShadow(
                          color: Colors.yellow,
                          blurRadius: 20,
                          offset: Offset(0, -4)),
                    ]),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("uefiegifgif"),
                      Text("uefiegifgif"),
                      Text("uefiegifgif"),
                    ])),
            TextField(
              
              cursorColor: Colors.red,
              cursorWidth: 5,
              //   cursorHeight: 3,
              cursorRadius: Radius.circular(10),
              minLines: 2,
              maxLines: 3,

              keyboardType: TextInputType.phone,
              onChanged :(value){
                print(value);
              },
              style: TextStyle(
                fontSize: 22
              ),
              decoration: InputDecoration(
                hintText: "Enter email",

                //  labelText: "Email",
                label: Text("Email"),
                //label: Icon(Icons.add),
                enabled: true,

                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.pink, width: 4)),

                filled: true,
                fillColor: Colors.yellowAccent,
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.clear_rounded),
                labelStyle: TextStyle(fontWeight: FontWeight.bold),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.yellow, width: 4)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 3,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              cursorColor: Colors.red,
              cursorWidth: 5,
              //   cursorHeight: 3,
              cursorRadius: Radius.circular(10),
              obscuringCharacter: "*",
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onChanged :(value){
                print(value);
              },
              style: TextStyle(
                  fontSize: 22
              ),

              decoration: InputDecoration(
                hintText: "Enter password",

                //  labelText: "Email",
                label: Text("password"),
                //label: Icon(Icons.add),
                enabled: true,
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.pink, width: 4)),

                filled: true,
                fillColor: Colors.yellowAccent,
                prefixIcon: Icon(Icons.password),
               // suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility)),
               //  suffixIcon:  GestureDetector(onTap: (){
               //    print("GestureDetector");
               //  },child: Icon(Icons.visibility)),
                suffixIcon: InkWell(
                    onTap: () {
                      print("InkWell");
                    },
                    child: Icon(Icons.visibility)),

                labelStyle: TextStyle(fontWeight: FontWeight.bold),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.yellow, width: 4)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 3,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    )),
              ),
            ),
            InkWell(
            onTap: (){
              print("InkWell debbroto");
            }
            ,child: Text("debbroto"))
          ],
        ),
      ),
    );
  }
}
