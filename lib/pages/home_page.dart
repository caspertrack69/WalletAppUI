// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:project/util/my_button.dart';
import 'package:project/util/my_card.dart';
import 'package:project/util/my_list_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.monetization_on_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " Card",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  //tambah button
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            //kartu
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5.124,
                    cardNumber: 12345678,
                    expiryMonth: 13,
                    expiryYear: 24,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 2.341,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.red[300],
                  ),
                  MyCard(
                    balance: 4.467,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 14,
                    color: Colors.green[300],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: Color.fromARGB(255, 150, 159, 161)),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //button kirim
                  MyButton(
                    iconImagePath: 'icons/btc.png',
                    buttonText: 'Bitcoin ',
                  ),
                  //button tambah
                  MyButton(
                    iconImagePath: 'icons/ccbiru.png',
                    buttonText: 'Credit ',
                  ),
                  //button bayar
                  MyButton(
                    iconImagePath: 'icons/cchijau.png',
                    buttonText: 'Card ',
                  ),
                ],
              ),
            ),

            //transaksi statik
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  //icon
                  MyListData(
                    iconImagePath: 'icons/static.png',
                    listTitle: 'Statiscics',
                    listSubTitle: 'Transactions and Income',
                  ),
                  MyListData(
                    iconImagePath: 'icons/cash.png',
                    listTitle: 'Cashless',
                    listSubTitle: 'Transactions',
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
