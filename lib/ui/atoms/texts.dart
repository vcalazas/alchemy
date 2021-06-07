import 'package:alchemy/constants.dart';
import 'package:flutter/material.dart';

class TextStyledConstants {
  static const int ultraSmallFont = 0;
  static const int smallFont = 1;
  static const int mediumFont = 2;
  static const int largeFont = 3;

  static double getSize(int fontSize) {
    switch (fontSize) {
      case TextStyledConstants.largeFont:
        return 35;
      case TextStyledConstants.mediumFont:
        return 20;
      case TextStyledConstants.smallFont:
        return 15;
      case TextStyledConstants.ultraSmallFont:
        return 13;
      default:
        return 35;
    }
  }

  static const int TextContrastTypeLight = 1;
  static const int TextContrastTypeDark = 2;

  static const Color lightContranstColor = Color(0xff232323);
  static const Color darkContranstColor = Color(0xffF4F6F8);

  static Color getColor(int textContrastType) {
    switch (textContrastType) {
      case TextContrastTypeLight:
        return lightContranstColor;
      default:
        return darkContranstColor;
    }
  }
}

class TitleStyled extends StatelessWidget {
  String text;
  int fontSize, textContrastType;
  bool hasSquare, hasPadding;

  TitleStyled({
    required this.text,
    this.fontSize = TextStyledConstants.largeFont,
    this.textContrastType = TextStyledConstants.TextContrastTypeDark,
    this.hasSquare = true,
    this.hasPadding = true,
  });

  double getSquareSize() {
    switch (fontSize) {
      case TextStyledConstants.largeFont:
        return 20;
      case TextStyledConstants.mediumFont:
        return 12.5;
      case TextStyledConstants.smallFont:
        return 10;
      default:
        return 35;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white30,
      padding: this.hasPadding ? EdgeInsets.only(
        top: Constants.PADDING_SMALL_SIZE,
        bottom: Constants.PADDING_SMALL_SIZE,
      ) : null,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          hasSquare
              ? Container(
                  height: getSquareSize(),
                  width: getSquareSize(),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        Constants.BORDER_RADIUS_SMALL_SIZE),
                    color: Color(0xff4EA015),
                  ),
                )
              : Container(),
          Container(
            margin: EdgeInsets.only(left: Constants.PADDING_ULTRA_SMALL_SIZE),
            child: Text(
              this.text,
              style: TextStyle(
                color: TextStyledConstants.getColor(textContrastType),
                fontSize: TextStyledConstants.getSize(this.fontSize),
                wordSpacing: 2.5,
                letterSpacing: 1.8,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  String text;
  bool isBold, hasPadding;
  int textContrastType;

  Subtitle({
    required this.text,
    this.isBold = false,
    this.hasPadding = true,
    this.textContrastType = TextStyledConstants.TextContrastTypeDark,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white30,
      padding: this.hasPadding ? EdgeInsets.only(
        top: Constants.PADDING_SMALL_SIZE,
        bottom: Constants.PADDING_SMALL_SIZE,
      ) : null,
      child: Text(
        this.text,
        style: TextStyle(
            color: TextStyledConstants.getColor(textContrastType),
            fontSize: 15,
            wordSpacing: 2.5,
            letterSpacing: 2,
            fontWeight: this.isBold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}
