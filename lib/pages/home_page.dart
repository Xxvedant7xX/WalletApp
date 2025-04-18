// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25), //can make change to top padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(children: [
                   Text('My',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text(' Cards',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                  ),
                 ],
                 ),

                  //plus button
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                    shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add)
                    ),
                ],
                ),
            ),

            SizedBox(height: 25),

            //cards
            Container(
              height: 200,
              child:
              PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 23479.69,
                    cardNumber: 97654328,
                    expiryMonth: 07,
                    expiryYear: 29,
                    color: Colors.purple[400],
                  ),
                   MyCard(
                    balance: 234.81,
                    cardNumber: 62649211,
                    expiryMonth: 02,
                    expiryYear: 31,
                    color: Colors.green[400],
                  ),
                   MyCard(
                    balance: 67890437.19,
                    cardNumber: 74150231,
                    expiryMonth: 09,
                    expiryYear: 27,
                    color: Colors.blue[400],
                  ),
                ],
              ),
            ),
             SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller,
               count: 3,
               effect: ExpandingDotsEffect(
                activeDotColor: Colors.black,
               ),
               ),

              SizedBox(height: 25),

            // 3 buttons => send , pay, bill

            Row(children: [
            // send button

            //pay button

            //bill button
            ],
            ),

        
            // column => stats + transactions
            
          ],
          ),
      ),
    );
  }
}