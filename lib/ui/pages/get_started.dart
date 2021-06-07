import 'package:alchemy/constants.dart';
import 'package:alchemy/ui/atoms/buttons.dart';
import 'package:alchemy/ui/atoms/texts.dart';
import 'package:alchemy/ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Container(
            color: Color(0xFF2D452F),
            constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  width: constraints.maxWidth - (constraints.maxWidth/8),
                  height: constraints.maxHeight - (constraints.maxHeight/2.3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Constants.BORDER_RADIUS_LARGE_SIZE)
                    ),
                    color: Color(0xff4C6A4B),
                  ),
                ),
                Container(
                  // color: Colors.white30,
                  constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                      minWidth: constraints.maxWidth
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/images/plant1.png"),
                      Container(
                        // color: Colors.white30,
                        margin: EdgeInsets.only(left: constraints.maxWidth/6),
                        constraints: BoxConstraints(
                            minHeight: constraints.maxHeight / 4,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TitleStyled(
                              text: "Plantly",
                            ),
                            Subtitle(
                              text: "First-ever personalized \nPlant shop",
                            ),
                            Button(
                              text: "Get Started",
                              onPressed: (){
                                Get.to(()=>Home());
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
