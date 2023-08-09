import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

Widget mainWidgetForSplash() => Scaffold(
  body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Center(
      child: Flash(
        child: SizedBox(
            height: 150,
            width: 150,
            child: Image.asset('assets/logo.png')),
      ),
    ),
  ],),
);