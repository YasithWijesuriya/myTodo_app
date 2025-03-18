import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Container(
         width:screenwidth,
         height:screenheight,
         child:Center(
          child:Image.asset('assets/logo/myTask.png',
          width:200,
          height:80,
          ),
         ),
      ),
    );
  }
}