// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/USER_SB4Header.png'),
                  // Replace with your image asset
                  fit: BoxFit.fitWidth, // This will cover the entire container
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios, color: Colors.white, size: 30)
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[200],
                    radius: 100,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.green[900]!,
                          // Change this to your desired border color
                          width: 2.0, // Change this to adjust the border width
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.green[900],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(27),
                                topRight: Radius.circular(27),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    children: [
                                      'Dela Cruz, Juan M.'
                                          .text
                                          .color(Colors.white)
                                          .size(20)
                                          .bold
                                          .make(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              'Date of Birth: '.text.make(),
                              'Date of Death: '.text.make(),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.green[900],
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 60),
                                      'Show Map'.text.size(15).color(Colors.white).make(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(60),
                                        border: Border.all(
                                          color: Colors.green[900]!,
                                          // Change this to your desired border color
                                          width:
                                          3.0, // Change this to adjust the border width
                                        ),
                                      ),
                                      child: Center(child: Icon(Icons.pin_drop, color: Colors.green[900], size: 35,),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
