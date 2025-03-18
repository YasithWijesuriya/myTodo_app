import 'package:flutter/material.dart';
import 'package:mytodo_app/contants/color.dart';

class editTodo extends StatefulWidget {
  const editTodo({super.key});

  @override
  State<editTodo> createState() => _editTodoState();
}

class _editTodoState extends State<editTodo> {
  final TextEditingController _titlecontroller = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.accentColor,
      appBar: AppBar(
        toolbarHeight: 120,
        centerTitle: true,
        title: const Text(
          'Edit Task',
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
            child: const Center(
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
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          width: screenWidth,
          height: screenHeight - 120,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Title',
                style: TextStyle(
                  color: AppColors.accentColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppins',
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _titlecontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.textFieldBorderColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.textFieldBorderColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Description',
                style: TextStyle(
                  color: AppColors.accentColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppins',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                minLines: 6,
                maxLines: 8,
                controller: _descriptionController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.textFieldBorderColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.textFieldBorderColor,
                    ),
                  ),
                ),
              ),
             const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: screenWidth,
                height: 55,
                child: const Center(
                  child: Text(
                    'Save Task',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
    );
  }
}
