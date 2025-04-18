import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 40,
                      spreadRadius: 10,
                    ),
                  ],
                  ),
                  height:100,
                  child: Center(
                    child: Image.asset('lib/icons/send-money.png'),
                    ),
                    ),
                    SizedBox(height: 12),
                    //text
                    Text('Send',
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