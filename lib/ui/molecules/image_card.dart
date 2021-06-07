import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffF0F0F0),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Image.asset(
        "assets/images/plant1.png",
      ),
    );
  }
}
