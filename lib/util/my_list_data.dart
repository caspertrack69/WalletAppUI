// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyListData extends StatelessWidget {
  final String iconImagePath;
  final String listTitle;
  final String listSubTitle;

  const MyListData({
    Key? key,
    required this.iconImagePath,
    required this.listTitle,
    required this.listSubTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 80.0,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(iconImagePath),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              listTitle,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              listSubTitle,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 35,
        ),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
