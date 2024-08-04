import 'package:flutter/material.dart';
import 'package:blog_web/pages/blog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Blog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlogPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
