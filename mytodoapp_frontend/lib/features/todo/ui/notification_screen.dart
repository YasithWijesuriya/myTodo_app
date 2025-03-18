import 'package:flutter/material.dart';
import 'package:mytodo_app/contants/color.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: const Text(
          'Notification',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'poppins',
            color: AppColors.accentColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
                color: AppColors.accentColor,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ]),
      ),
      body:Container(
        color:Colors.white,
        width:screenWidth,
        height:screenHeight - 100 ,
        child:Column(
          children: [
            Container(
              width:screenWidth,
              height:1.5,
              color:AppColors.accentColor,
            ),
             
            Container(
               padding:const EdgeInsets.symmetric(horizontal:20),
              height:60,
              width:screenWidth,
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
          'AI Task Completed',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'poppins',
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Well done Phillip, you have completed all the tasks for today',
          style: TextStyle(
            fontSize: 10,
            fontFamily: 'poppins',
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
                ],
              ),
            ),
            Container(
              color:AppColors.notificationBgColor,
               padding:const EdgeInsets.symmetric(horizontal:20),
              height:60,
              width:screenWidth,
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
          'Task Created',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'poppins',
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Phillip, your assignment is less than 8 days away from reaching',
          style: TextStyle(
            fontSize: 10,
            fontFamily: 'poppins',
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
                ],
              ),
            ),
            Container(
               padding:const EdgeInsets.symmetric(horizontal:20),
              height:60,
              width:screenWidth,
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
          'UX Task Completed',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'poppins',
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Well done Phillip, you have completed all the tasks for today',
          style: TextStyle(
            fontSize: 10,
            fontFamily: 'poppins',
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
                ],
              ),
            ),
            Container(
              color:AppColors.notificationBgColor,
               padding:const EdgeInsets.symmetric(horizontal:20),
              height:60,
              width:screenWidth,
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
          'Task completed',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'poppins',
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Well done Phillip, you have completed all the tasks for today',
          style: TextStyle(
            fontSize: 10,
            fontFamily: 'poppins',
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
                ],
              ),
            ),
            Container(
              color:AppColors.notificationBgColor,
               padding:const EdgeInsets.symmetric(horizontal:20),
              height:60,
              width:screenWidth,
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
          'Task completed',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'poppins',
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Well done Phillip, you have completed all the tasks for today',
          style: TextStyle(
            fontSize: 10,
            fontFamily: 'poppins',
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
                ],
              ),
            ),
          ],
        ),
        ),
      );
  }
}
