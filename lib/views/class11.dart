import 'package:flutter/material.dart';

class Class11 extends StatefulWidget {
  const Class11({super.key});

  @override
  State<Class11> createState() => _Class11State();
}

class _Class11State extends State<Class11> {
  final formState = GlobalKey<FormState>();
  bool switchstate = true;
  bool checkstate = true;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formState.currentState!.validate()) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Login Success"),
                    content: Text("Login Success, Go to home"),
                    backgroundColor: Colors.cyan,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    shadowColor: Colors.cyan,
                    icon: Icon(Icons.local_activity),
                    actions: [
                      Text("Ok"),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.clear_rounded))
                    ],
                    // contentPadding: EdgeInsets.all(50),
                    //  titlePadding: ,
                    // titleTextStyle: ,
                  );
                });
          }
        },
        elevation: 10,
        tooltip: "Login",
        backgroundColor: Colors.indigo,
        child: Icon(Icons.login, color: Colors.white),
        // shape: CircleBorder(),
        //   shape: OutlineInputBorder(),
        //  shape: RoundedRectangleBorder(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        //   padding: const EdgeInsets.only(
        //     left: 10,
        //     right: 50,
        //     top: 10,
        //     bottom: 10
        //   ),
        //   padding:  const EdgeInsets.symmetric(
        //     horizontal: 40,
        //     vertical: 20
        //   ),

        //  padding: const EdgeInsets.fromLTRB(10,20,30,10),

        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Form(
                key: formState,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        //check
                        if (value!.isEmpty) {
                          return 'Please enter email address';
                        } else {
                          return null;
                        }
                      },
                      cursorColor: Colors.red,
                      cursorWidth: 5,
                      //   cursorHeight: 3,
                      cursorRadius: Radius.circular(10),
                      keyboardType: TextInputType.text,

                      style: TextStyle(fontSize: 22),

                      decoration: InputDecoration(
                        hintText: "Enter Email",

                        //  labelText: "Email",
                        label: Text("Email"),
                        //label: Icon(Icons.add),
                        enabled: true,
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.pink, width: 4)),

                        filled: true,
                        fillColor: Colors.yellowAccent,
                        prefixIcon: Icon(Icons.email),
                        // suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility)),
                        //  suffixIcon:  GestureDetector(onTap: (){
                        //    print("GestureDetector");
                        //  },child: Icon(Icons.visibility)),
                        suffixIcon: Icon(Icons.clear_rounded),

                        labelStyle: TextStyle(fontWeight: FontWeight.bold),

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.yellow, width: 4)),
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
                    Divider(
                      height: 20,
                      color: Colors.pink,
                      thickness: 10,
                      indent: 50,
                    ),
                    TextFormField(
                      validator: (value) {
                        //check
                        if (value!.isEmpty) {
                          return 'Please enter password';
                        } else {
                          return null;
                        }
                      },
                      cursorColor: Colors.red,
                      cursorWidth: 5,
                      //   cursorHeight: 3,
                      cursorRadius: Radius.circular(10),
                      obscuringCharacter: "*",
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      style: TextStyle(fontSize: 22),

                      decoration: InputDecoration(
                        hintText: "Enter password",

                        //  labelText: "Email",
                        label: Text("password"),
                        //label: Icon(Icons.add),
                        enabled: true,
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.pink, width: 4)),

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
                            borderSide:
                                BorderSide(color: Colors.yellow, width: 4)),
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
                  ],
                )),
            Switch(
                value: switchstate,
                onChanged: (value) {
                  switchstate = !switchstate;
                  setState(() {});
                }),
            Tooltip(
              message: "checkbox",
              child: Checkbox(
                  value: checkstate,
                  onChanged: (value) {
                    checkstate = !checkstate;
                    setState(() {});
                  }),
            ),


          ]),
        ),
      ),
    );
  }
}
