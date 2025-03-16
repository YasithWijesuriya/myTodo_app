import 'package:flutter/material.dart';
import 'package:mytodo_app/contants/color.dart';

class viewTodo extends StatelessWidget {
  const viewTodo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.accentColor,
      appBar: AppBar(
        toolbarHeight: 120,
        centerTitle: true,
        title: Text(
          'View Task',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Icon(
                Icons.arrow_back,
                color: AppColors.accentColor,
                size: 20,
              ),
            ),
          ),
        ]),
        backgroundColor: AppColors.accentColor,
      ),
      body:Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          width: screenWidth,
          height: screenHeight - 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                  color: AppColors.accentColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppins',
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                      'Work Out',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
              const SizedBox(height: 20),
              const Text(
                'Description',
                style: TextStyle(
                  color: AppColors.accentColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppins',
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                      'Routine exercise every morning with sports, either running, or swimming, or jogging, or badminton, futsal, or similar sports. Work out to form a better body and live a healthier life. hopefully all this can be achieved.',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
            ],
          ),
        ),
    );
  }
}
