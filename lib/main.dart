// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:panacan_grave/screen/details/details.screen.dart';
import 'package:panacan_grave/screen/home/home.screen.dart';
import 'package:panacan_grave/screen/onbording/first.screen.dart';
import 'package:panacan_grave/screen/onbording/second.screen.dart';
import 'package:panacan_grave/screen/search/search.screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
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
