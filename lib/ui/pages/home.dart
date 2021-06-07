import 'package:alchemy/ui/atoms/edit_text.dart';
import 'package:alchemy/ui/atoms/texts.dart';
import 'package:alchemy/ui/molecules/large_card.dart';
import 'package:alchemy/ui/organisms/horizontal_card_list.dart';
import 'package:alchemy/ui/pages/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _appbar() => AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Color.fromRGBO(242, 243, 247, 0.7),
        elevation: 0.0,
        title: Center(
          child: TitleStyled(
            text: "Plant Shop",
            fontSize: TextStyledConstants.mediumFont,
            textContrastType: TextStyledConstants.TextContrastTypeLight,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appbar(),
      drawer: Drawer(),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          _body(context),
        ],
      ),
    );
  }

  _body(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Container(
            color: Color(0xFFF2F3F7),
            padding: EdgeInsets.only(top: kToolbarHeight * 1.5),
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            child: Column(
              children: [
                EditText(
                  hintText: "Search...",
                ),
                LargeCard(),
                HorizontalCardList(
                  text: "Popular Item",
                  onPressed: () {
                    Get.to(() => ProductDetails());
                  },
                ),
                HorizontalCardList(
                  typeCard: HorizontalCardListConstants.typeSmall,
                  text: "Similar Item",
                  onPressed: () {
                    Get.to(() => ProductDetails());
                  },
                ),
              ],
            ),
          ),
        ),
      );
}
