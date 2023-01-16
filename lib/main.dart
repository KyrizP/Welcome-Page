import 'package:flutter/material.dart';
import 'package:fluttertest1/pages/pages.dart';
import 'package:fluttertest1/shared/shared.dart';

void main() {
  runApp(MaterialApp(
    home: Welcome(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: primaryColor,
      primarySwatch: ColorPallete.purpleColor,
    ),
  ));
}
