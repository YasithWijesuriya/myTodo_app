import 'package:flutter/material.dart';
import 'package:mytodo_app/contants/color.dart';

class Custombutton extends StatelessWidget {
  final double btnWidth;
  final String btnText;
  const Custombutton({super.key,
  required this.btnWidth, 
  required this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
                        decoration: BoxDecoration(
                       color:AppColors.accentColor,
                       borderRadius: BorderRadius.circular(40),
                      
                        ),
                        width:btnWidth,
                        height:55,
                        child:Center(
                          child: Text(
                            btnText,
                            style:TextStyle(
                              color:Colors.white,
                              fontSize: 16,
                              fontWeight:FontWeight.bold,
                            ),
                          ),
                        ),
                      );
  }
}