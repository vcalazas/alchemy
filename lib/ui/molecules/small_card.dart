import 'package:alchemy/constants.dart';
import 'package:alchemy/ui/atoms/texts.dart';
import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double height = constraints.maxHeight;
        double width = height * 1.5;
        return Container(
          height: height,
          width: width,
          // color: Colors.black45,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: height * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(Constants.BORDER_RADIUS_MEDIUM_SIZE),
                  ),
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: width/20,
                      left: width/13
                    ),
                    height:  width / 3,
                    width:  width / 3,
                    color: Color(0xffE7FEF4),
                  )
                ],
              ),
              Row(
                children: [
                  Container(

                    child: Image.asset(
                      "assets/images/plant1.png",
                      width: width / 2,
                    ),
                  ),
                  Container(
                    width: width / 2,
                    // color: Colors.black45,
                    padding:
                    EdgeInsets.only(bottom: Constants.PADDING_SMALL_SIZE),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleStyled(
                          text: "Shark G",
                          fontSize: TextStyledConstants.smallFont,
                          hasSquare: false,
                          hasPadding: false,
                          textContrastType:
                          TextStyledConstants.TextContrastTypeLight,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 20
                          ),
                          child: TitleStyled(
                            text: "Item: 02",
                            fontSize: TextStyledConstants.ultraSmallFont,
                            hasSquare: false,
                            hasPadding: false,
                            textContrastType:
                            TextStyledConstants.TextContrastTypeLight,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: Constants.PADDING_MEDIUM_SIZE,
                            right: Constants.PADDING_MEDIUM_SIZE,
                            top: Constants.PADDING_ULTRA_SMALL_SIZE,
                            bottom: Constants.PADDING_ULTRA_SMALL_SIZE,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff2D452F),
                            borderRadius: BorderRadius.circular(
                              Constants.BORDER_RADIUS_SMALL_SIZE,
                            ),
                          ),
                          child: Text(
                            "\$ 10",
                            style:
                            TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
