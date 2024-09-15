import 'package:flutter/material.dart';

class ColorScreen extends StatelessWidget {
  ColorScreen({super.key, required this.screenColor});
Color screenColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: screenColor,

    );
  }
}
