import 'package:alchemy/constants.dart';
import 'package:alchemy/ui/atoms/buttons.dart';
import 'package:alchemy/ui/atoms/texts.dart';
import 'package:flutter/material.dart';

class LargeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Constants.PADDING_MEDIUM_SIZE),
      height: 200,
      // color: Colors.black26,
      child: LayoutBuilder(
        builder: (context, constraints) => Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: constraints.maxHeight / 1.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(Constants.BORDER_RADIUS_MEDIUM_SIZE),
                ),
                color: Color(0xffD5E5D4),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.black45,
                      padding: EdgeInsets.only(
                        bottom: Constants.PADDING_SMALL_SIZE
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleStyled(
                            text: "House pants for Dresh air & places",
                            fontSize: TextStyledConstants.smallFont,
                            hasSquare: false,
                            textContrastType:
                                TextStyledConstants.TextContrastTypeLight,
                          ),
                          Subtitle(
                            text: "Starts from",
                            textContrastType: TextStyledConstants.TextContrastTypeLight,
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
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset("assets/images/plant1.png"),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
