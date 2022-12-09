import 'package:basic_ui/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(color:Colors.black),
        iconTheme: const IconThemeData(color:Colors.white),
        textTheme: const TextTheme(
        titleSmall: TextStyle(color: Colors.white,fontSize: 20.0),
      ),),
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/Pic1.jpg'),fit: BoxFit.cover)),
        child: const Homepage()),
    );
  }
}

