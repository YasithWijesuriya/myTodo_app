import 'package:flutter/material.dart';
import 'package:mytodo_app/contants/color.dart';

class Customtodocard extends StatefulWidget {
  final String cardTiltle;
  final bool isTaskCompleted;
  final int radioValue = 1;
  const Customtodocard({super.key, required this.cardTiltle, required this.isTaskCompleted});

  @override
  State<Customtodocard> createState() => _CustomtodocardState();
}

class _CustomtodocardState extends State<Customtodocard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
                          width: screenWidth,
                          height: 70,
                          margin:EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColors.accentColor.withOpacity(0.5),
                            ),
                          ),
                          child: Row(
                            children: [
                              Radio(
                                  value:widget.isTaskCompleted?0 :1,
                                  groupValue: 0,
                                  onChanged: (value) {}),
                              Text(
                                widget.cardTiltle,
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: widget.isTaskCompleted
                                  ?Colors.black
                                  :AppColors.accentColor,
                                ),
                              ),
                              Spacer(),
                              widget.isTaskCompleted?
                              SizedBox()

                              :Column(
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
                                width: 15,
                              ),
                            ],
                          ),
                        );
                        
  }
  }