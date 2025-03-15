import 'package:flutter/material.dart';
import 'package:mytodo_app/contants/color.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Tuesday, March 11 , 2025',
              style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            Spacer(),
            Image.asset(
              'assets/images/notification.png',
              width: 20,
              height: 20,
            )
          ],
        ),
      ),
      body: SizedBox(
        height: screenHeight - AppBar().preferredSize.height,
        width: screenWidth,
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 210,
                width: screenWidth,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Phillip',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 26,
                      ),
                    ),
                    Text(
                      'Have a nice day!',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Spacer(),
                    Text(
                      'Today Progress',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 76,
                      width: screenWidth,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(('assets/images/homeBoximg.png')),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Text(
                            'Progress',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          LinearProgressIndicator(
                            value: 0.6,
                            color: Colors.white,
                            backgroundColor: AppColors.progressBgColor,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '60%',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight - (AppBar().preferredSize.height + 210),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                    child: Text(
                      'Daily Tasks',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth,
                    height:
                        screenHeight - (AppBar().preferredSize.height + 255),
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColors.accentColor.withOpacity(0.5),
                            ),
                          ),
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: 0,
                                  onChanged: (value) {}),
                              Text(
                                'Today',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Spacer(),
                                  Icon(Icons.edit),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
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
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor:AppColors.accentColor,
        onPressed: () {},
        label: Row(
          children: [
            Icon(Icons.add ,color:Colors.white,),
            SizedBox(
              width: 10,
            ),
            Text(
              'Add Task',
              style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.w500,
                fontSize:15,
                color:Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
