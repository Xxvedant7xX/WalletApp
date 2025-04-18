// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String IconImagePath;
  final String buttonText;

  const MyButton({super.key,
  required this.IconImagePath,
  required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                //icon
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(//color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 30,
                      spreadRadius: 10,
                    ),
                  ],
                  ),
                  height:90,
                  child: Center(
                    child: Image.asset(IconImagePath),
                    ),
                    ),
                    SizedBox(height: 4),
                    //text
                    Text(buttonText,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                    ),
              ],
            );
  }
}