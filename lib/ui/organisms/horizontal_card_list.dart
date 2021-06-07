import 'package:alchemy/constants.dart';
import 'package:alchemy/ui/atoms/buttons.dart';
import 'package:alchemy/ui/atoms/texts.dart';
import 'package:alchemy/ui/molecules/image_card.dart';
import 'package:alchemy/ui/molecules/my_card.dart';
import 'package:alchemy/ui/molecules/small_card.dart';
import 'package:flutter/material.dart';

class HorizontalCardListConstants {
  static const int typeMedium = 1;
  static const int typeSmall = 2;
  static const int typeImage = 3;
}

class HorizontalCardList extends StatelessWidget {
  bool isShowAll;
  int typeCard;
  String text;
  Function() onPressed;

  HorizontalCardList({
    this.isShowAll = true,
    this.typeCard = HorizontalCardListConstants.typeMedium,
    this.text = "",
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (() {
        switch (this.typeCard) {
          case HorizontalCardListConstants.typeMedium:
            return 350.0;
          case HorizontalCardListConstants.typeSmall:
            return 250.0;
          default:
            return 200.0;
        }
      })(),
      padding: EdgeInsets.only(
        top: Constants.PADDING_ULTRA_SMALL_SIZE,
        bottom: Constants.PADDING_MEDIUM_SIZE,
      ),
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                right: Constants.PADDING_MEDIUM_SIZE,
                left: Constants.PADDING_MEDIUM_SIZE,
                bottom: Constants.PADDING_SMALL_SIZE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleStyled(
                  text: this.text,
                  fontSize: TextStyledConstants.mediumFont,
                  textContrastType: TextStyledConstants.TextContrastTypeLight,
                ),
                this.isShowAll
                    ? MyTextButton(
                        text: "See All",
                        onPressed: () {},
                      )
                    : Container()
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => InkWell(
                onTap: this.onPressed,
                child: Container(
                  margin: EdgeInsets.only(
                    // right: Constants.PADDING_MEDIUM_SIZE,
                    left: Constants.PADDING_MEDIUM_SIZE,
                  ),
                  child: (() {
                    switch (this.typeCard) {
                      case HorizontalCardListConstants.typeMedium:
                        return MyCard();
                      case HorizontalCardListConstants.typeSmall:
                        return SmallCard();
                      default:
                        return ImageCard();
                    }
                  })(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
