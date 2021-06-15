import 'package:flutter/material.dart';
import 'package:instagram_profile_page/screens/profile_base_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Instagram Profile Page Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileBaseScreen(),
    );
  }
}
