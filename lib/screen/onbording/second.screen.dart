import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        height: double.infinity,
        width: double.infinity,
        color: Colors.green[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Disclaimer.png',
                        height: 35,
                      ),
                     SizedBox(width: 20),
                      "DISCLAIMER".text.size(30).semiBold.make(),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    height: 40,
                    width: 140,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[900],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(30)),
                      ),
                      onPressed: () async {

                      },
                      child: 'Next'.text.size(20).light.make(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
