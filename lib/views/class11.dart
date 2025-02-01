import 'package:flutter/material.dart';

  class Class11 extends StatefulWidget {
  const Class11({super.key});

  @override
  State<Class11> createState() => _Class11State();


    }

  class _Class11State extends State<Class11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "Class 11",
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
      body:TextField(
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
                color: Colors.pink,
                width: 2,
              )),
        ),
      ),



    );

  }
}
