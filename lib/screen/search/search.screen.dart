// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String? _selectedValue;

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
                  children: [Icon(Icons.home, color: Colors.white, size: 30)],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 160,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Stack(
                    children: [
                      // First Container with a TextField
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Colors.green[400]!,
                                  width: 2.0,
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search...',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Second Container with a circular icon
                      Positioned(
                        top: 0, // Adjust this value to position it as desired
                        right: 0, // Adjust this value to position it as desired
                        child: Container(
                          height: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.green[300],
                                      borderRadius: BorderRadius.circular(60),
                                      border: Border.all(
                                        color: Colors.green[300]!,
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Center(
                                      child: Icon(Icons.search, color: Colors.white, size: 30,),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.green[900],
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.filter_list,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            _selectedValue == null
                                ? 'Filter'
                                    .text
                                    .size(12)
                                    .color(Colors.white)
                                    .make()
                                : SizedBox(),
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                dropdownColor: Colors.green[300],
                                value: _selectedValue,
                                icon: Icon(Icons.arrow_drop_down,
                                    color: Colors.white),
                                iconSize: 20,
                                style: TextStyle(
                                    color: Colors.green[900], fontSize: 12),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'Date of Birth',
                                  'Date of Death',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: '$value'
                                        .text
                                        .color(Colors.white)
                                        .make(),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Container(
                      height: 140,
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
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'assets/images/ADMIN_SB3 Upload2.png',
                                        width: 60,
                                        height: 60,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Expanded(
                                    child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        'Dela Cruz, Juan M.'
                                            .text
                                            .size(20)
                                            .bold
                                            .make(),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        'Dela Cruz, Juan M.'
                                            .text
                                            .size(13)
                                            .make(),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        'Dela Cruz, Juan M.'
                                            .text
                                            .size(13)
                                            .make(),
                                      ],
                                    )
                                  ],
                                )),
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 30,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.green[900],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(27),
                                bottomRight: Radius.circular(27),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    children: [
                                      'SEE DETAILS'
                                          .text
                                          .color(Colors.white)
                                          .make(),
                                      Icon(
                                        Icons.arrow_right,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
