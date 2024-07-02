// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:panacan_grave/screen/details/details.screen.dart';
import 'package:panacan_grave/screen/home/home.screen.dart';
import 'package:panacan_grave/screen/onbording/first.screen.dart';
import 'package:panacan_grave/screen/onbording/second.screen.dart';
import 'package:panacan_grave/screen/search/search.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SecondScreen(),
    );
  }
}
