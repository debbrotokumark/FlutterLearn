import 'package:flutter/material.dart';
import 'package:untitled/views/class11.dart';
import 'package:untitled/views/example.dart';
import 'package:untitled/views/login_view.dart';
import 'package:untitled/views/class10.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      darkTheme:
          ThemeData(primarySwatch: Colors.green, primaryColor: Colors.white),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: "show in web",
      color: Colors.red,
      // locale:  for others language,
      home: const Class11(),
    );
  }
}
