import 'package:flutter/material.dart';
import 'package:mytodo_app/contants/color.dart';
import 'package:mytodo_app/widgets/customButton.dart';
import 'package:mytodo_app/widgets/customTextfield.dart';

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
                      child: Customtextfield(controller: nameController, lableText:'Name', borderColor:Colors.white)
                    ),
                   

                    Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 10.0,),
                      child: Customtextfield(controller: emailController, lableText:'Email', borderColor:Colors.white)
                    ),

                    Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 10.0 ,vertical: 10.0,),
                      child: Customtextfield(controller: passwordController, lableText:'Password', borderColor:Colors.white )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      child: Custombutton(btnWidth: screenWidth, btnText:'Sign up')
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
