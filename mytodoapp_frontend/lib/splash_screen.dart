import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:SafeArea(
        child: SizedBox(
        width:screenWidth,
        height:screenHeight,
        child:Center(
          child:Image.asset('assets/logo/myTask.png',
          width: 200,
          
          ),
        ),
        ),
      ) ,
    );
  }
}