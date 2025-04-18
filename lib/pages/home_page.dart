// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_button.dart';
import 'package:walletapp/util/my_card.dart';
import 'package:walletapp/util/my_list_tile.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink[400],
        child: Icon(Icons.currency_rupee_outlined,
        size: 32,
        color: Colors.white,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(
              onPressed: () {},
               icon: Icon(Icons.home,
               size: 32,
               ),
               ),
               SizedBox(width: 140,),
               IconButton(
              onPressed: () {},
               icon: Icon(Icons.settings,
               size: 32,
               ),
            ),
          ],
          ),
        ),
      ),
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

            SizedBox(height: 30),

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
             SizedBox(height: 35),

            SmoothPageIndicator(
              controller: _controller,
               count: 3,
               effect: ExpandingDotsEffect(
                activeDotColor: Colors.black,
               ),
               ),

              SizedBox(height: 20),

            // 3 buttons => send , pay, bill

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              // send button
              MyButton(
                IconImagePath: 'lib/icons/send-money.png',
                buttonText: 'Send'),
              //pay button
               MyButton(
                IconImagePath: 'lib/icons/credit-card.png',
                buttonText: 'Pay'),
              
              //bill button
               MyButton(
                IconImagePath: 'lib/icons/bill.png',
                buttonText: 'Bills'),
              
              ],
              ),
            ),

            SizedBox(height: 25),

            // column => stats + transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //statistics
                  MyListTile(
                    iconImagePath: 'lib/icons/statistics.png',
                     tiletitle: 'Statistics',
                      tileSubtitle: 'Payment and Income',
                      ),
                  //transactions
                  MyListTile(
                    iconImagePath: 'lib/icons/cash-flow.png',
                     tiletitle: 'Transactions',
                      tileSubtitle: 'Transactions History',
                      ),
              ],
              ),
            ),
          ],
          ),
      ),
    );
  }
}