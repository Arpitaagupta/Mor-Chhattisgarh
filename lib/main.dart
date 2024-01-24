import 'package:flutter/material.dart';
import 'package:mor_chhattisgarh/pages/detail_page.dart';
import 'package:mor_chhattisgarh/pages/nav_pages/main_page.dart';
import 'package:mor_chhattisgarh/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailPage(),
      //MainPage(),
      //WelcomePage(),
    );
  }
}
