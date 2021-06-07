import 'package:alchemy/constants.dart';
import 'package:alchemy/ui/atoms/texts.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Function() onPressed;
  String text;

  Button({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: this.onPressed,
        child: Container(
          padding: EdgeInsets.only(
            left: Constants.PADDING_SMALL_SIZE,
            right: Constants.PADDING_SMALL_SIZE,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(
              Constants.BORDER_RADIUS_SMALL_SIZE,
            ),
          ),
          child: Subtitle(
            text: this.text,
            isBold: true,
          ),
        ),
      ),
    );
  }
}

class MyTextButton extends StatelessWidget {
  Function() onPressed;
  String text;

  MyTextButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: this.onPressed,
        child: Container(
          padding: EdgeInsets.only(
            left: Constants.PADDING_SMALL_SIZE,
            right: Constants.PADDING_SMALL_SIZE,
          ),
          child: Text(
            this.text,
            style: TextStyle(
              color: Color(0xff4EA015)
            ),
          ),
        ),
      ),
    );
  }
}
