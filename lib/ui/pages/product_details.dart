import 'package:alchemy/constants.dart';
import 'package:alchemy/ui/atoms/number_picker.dart';
import 'package:alchemy/ui/atoms/texts.dart';
import 'package:alchemy/ui/organisms/horizontal_card_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Color.fromRGBO(72, 103, 76, 0.7),
        elevation: 0.0,
        title: Center(
          child: TitleStyled(
            text: "Plant Shop",
            fontSize: TextStyledConstants.mediumFont,
            textContrastType: TextStyledConstants.TextContrastTypeDark,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Get.back();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff4C6A4B),
            Color(0xff284B53),
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 20),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset(
                      "assets/images/plant1.png",
                      fit: BoxFit.cover,
                    ),
                    Transform(
                      alignment: FractionalOffset.bottomRight,
                      transform: Matrix4.identity()..scale(0.7),
                      child: NumberPicker(),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                // height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    TopDescription(),
                    Innerdescription(),
                    HorizontalCardList(
                      isShowAll: false,
                      typeCard: HorizontalCardListConstants.typeImage,
                      text: "Similar Plants",
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Innerdescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleStyled(
            text: "Desciption",
            textContrastType: TextStyledConstants.TextContrastTypeLight,
            fontSize: TextStyledConstants.mediumFont,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
              style: TextStyle(color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}

class TopDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 30, right: 30),
      // color: Colors.black54,
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    _image(),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Beetoo Plant",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Item: inhouse",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: Constants.PADDING_ULTRA_SMALL_SIZE,
                              right: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "data",
                                  style: TextStyle(
                                    color: Colors.black26,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ 3.0",
                      style: TextStyle(
                        color: Color(0xff2B4531),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color(0xff4EA015),
                          ),
                          Text(
                            "34",
                            style: TextStyle(
                              color: Color(0xff4EA015),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _image() => Container(
        height: 100,
        child: LayoutBuilder(
          builder: (context, constraints) {
            double height = constraints.maxHeight;
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: height - (height / 3),
                  width: height - (height / 5),
                  decoration: BoxDecoration(
                    color: Color(0xff2B4843),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    "assets/images/plant1.png",
                    height: height - (height / 8),
                    fit: BoxFit.cover,
                  ),
                )
              ],
            );
          },
        ),
      );
}
