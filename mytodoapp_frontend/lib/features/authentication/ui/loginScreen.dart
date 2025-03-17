import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mytodo_app/contants/color.dart';
import 'package:mytodo_app/widgets/customButton.dart';
import 'package:mytodo_app/widgets/customTextfield.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              // Top Section: Lottie Animation
              Expanded(
                flex: 1,
                child: Center(
                  child: SizedBox(
                    width: screenWidth - 120,
                    child: Lottie.asset('assets/animation/loginAnimation.json'),
                  ),
                ),
              ),
              // Bottom Section: Login Form
              Expanded(
                flex: 2,
                child: Container(
                  width: screenWidth,
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView( // Add this to make the form scrollable
                    child: Column(
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold,
                            color: AppColors.fontColorBlack,
                          ),
                        ),
                        const SizedBox(height: 10), // Add spacing
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Welcome Back to ',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.fontColorBlack,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              ' MyTask',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20), // Add spacing
                        Customtextfield(controller: emailController, lableText:'Email', borderColor:AppColors.textFieldBorderColor),
                        const SizedBox(height: 10), // Add spacing
                        Customtextfield(controller:passwordController, lableText:'Password', borderColor:AppColors.textFieldBorderColor),
                        const SizedBox(height: 20), // Add spacing
                       Custombutton(btnWidth: screenWidth, btnText:'Login'),
                      const SizedBox(height: 10), 
                       Row(
                      children: [
                        Text("Don't have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.fontColorBlack,
                          fontWeight: FontWeight.w500,  
                        ),
                        ),
                        Text(' SignUp',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,  
                        ),
                        ),
                      ],
                      ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}