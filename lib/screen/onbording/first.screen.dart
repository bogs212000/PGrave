import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Welcome to".text.size(40).make(),
            SizedBox(height: 20),
            Image.asset('assets/logo/PGrave.png', width: 200,),
            SizedBox(height: 20),
            "of Panacan Public Cemetery".text.size(20).make(),
            SizedBox(height: 30),
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
            SizedBox(height: 100),
            Image.asset('assets/logo/Go For Big Development.png', width: 180,),
          ],
        ),
      ),
    );
  }
}
