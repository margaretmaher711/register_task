import 'package:flutter/material.dart';

Widget horizontalLine() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: 120,
        height: 1.0,
        color: Colors.black26.withOpacity(.2),
      ),
    );

Widget radioButton(bool isSelected) => Container(
  width: 16.0,
  height: 16.0,
  padding: EdgeInsets.all(2.0),
  decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(width: 2.0, color: Colors.black)),
  child: isSelected
      ? Container(
    width: double.infinity,
    height: double.infinity,
    decoration:
    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
  )
      : Container(),
);



