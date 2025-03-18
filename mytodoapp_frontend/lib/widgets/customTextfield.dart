import 'package:flutter/material.dart';
import 'package:mytodo_app/contants/color.dart';

class Customtextfield extends StatefulWidget {
  final TextEditingController controller;
  final String lableText;
  final Color borderColor;
  const Customtextfield({
    super.key,
    required this.controller,
    required this.lableText,
    required this.borderColor});

  @override
  State<Customtextfield> createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
                        controller: widget.controller,
                        decoration:InputDecoration(
                          filled:true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          enabledBorder:OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20), 
                             borderSide: BorderSide(
                              color:widget.borderColor,
                             ),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: widget.borderColor,
                          ),
                          ),
                          label: Text(widget.lableText,style:const TextStyle(
                            color:AppColors.lableFontColor,
                            fontFamily:'poppins',
                          ),), 
                          
                        ),
                      );
  }
}