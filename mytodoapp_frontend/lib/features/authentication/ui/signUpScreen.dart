import 'package:flutter/material.dart';
import 'package:mytodo_app/contants/color.dart';

class SignUpscreen extends StatefulWidget {
  const SignUpscreen({super.key});

  @override
  State<SignUpscreen> createState() => _SignUpscreenState();
}

class _SignUpscreenState extends State<SignUpscreen> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Center(child: Image.asset('assets/images/signup.png'))),
          Expanded(
            flex: 2,
            child: Container(
                width: screenWidth,
                // padding:EdgeInsets.symmetric(horizontal:40,vertical: 15,),
                decoration: BoxDecoration(
                  color: AppColors.signupAccentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  // crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                   Padding(padding: EdgeInsets.all(5),),
                    Text('Signup',
                    style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'poppins',
                    fontWeight:FontWeight.bold,
                    color:AppColors.fontColorBlack,
                    ),
                    ),
                   
                    Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 10.0 ,vertical: 10.0,),
                      child: TextField(
                        controller: nameController,
                        decoration:InputDecoration(
                          filled:true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          enabledBorder:OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20), 
                             borderSide: BorderSide(
                              color:Colors.white,
                             ),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.white,
                          ),
                          ),
                          label: Text('Name',style:TextStyle(
                            color:AppColors.lableFontColor,
                            fontFamily:'poppins',
                          ),), 
                          
                        ),
                      ),
                    ),
                   

                    Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 10.0,),
                      child: TextField(
                        controller: emailController,
                        decoration:InputDecoration(
                          filled:true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          enabledBorder:OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20), 
                             borderSide: BorderSide(
                              color:Colors.white,
                             ),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.white,
                          ),
                          ),
                          label: Text('Email',style:TextStyle(
                            color:AppColors.lableFontColor,
                            fontFamily:'poppins',
                          ),), 
                          
                        ),
                      ),
                    ),

                    Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 10.0 ,vertical: 10.0,),
                      child: TextField(
                        controller: passwordController,
                        decoration:InputDecoration(
                          filled:true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          enabledBorder:OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20), 
                             borderSide: BorderSide(
                              color:Colors.white,
                             ),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.white,
                          ),
                          ),
                          label: Text('Password',style:TextStyle(
                            color:AppColors.lableFontColor,
                            fontFamily:'poppins',
                          ),), 
                          
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                       color:AppColors.accentColor,
                       borderRadius: BorderRadius.circular(40),
                      
                        ),
                        width: screenWidth,
                        height:55,
                        child:Center(
                          child: Text(
                            'Sign up',
                            style:TextStyle(
                              color:Colors.white,
                              fontSize: 16,
                              fontWeight:FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                   height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                    child: Row(
                      children: [
                        Text('Already have an account? ',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.fontColorBlack,
                          fontWeight: FontWeight.w500,  
                        ),),
                        Text(' Login',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,  
                        ),)
                      ],),
                  ),
                  
                  ],
                ),
                ),
          ),
        ],
      ),
      );
  }
}
