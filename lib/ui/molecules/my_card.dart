import 'package:alchemy/constants.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double height = constraints.maxHeight;
        double wigth = constraints.minWidth;
        return Container(
          height: height,
          width: height - (height / 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(Constants.BORDER_RADIUS_MEDIUM_SIZE),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    margin: EdgeInsets.all(Constants.PADDING_ULTRA_SMALL_SIZE),
                    child: Center(
                      child: Image.asset(
                        "assets/images/plant1.png",
                        height: height - (height / 2.5),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.star_border))
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    top: height / 25,
                    left: height/20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Groffer Plant",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: height/17,
                        ),
                      ),
                      Text(
                        "Item: inhouse",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: height/22,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: Constants.PADDING_ULTRA_SMALL_SIZE,
                          right: height/20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "data",
                              style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.bold,
                                fontSize: height/20,
                              ),
                            ),
                            Text(
                              "\$ 3.0",
                              style: TextStyle(
                                color: Color(0xff4EA015),
                                fontWeight: FontWeight.bold,
                                fontSize: height/20,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
