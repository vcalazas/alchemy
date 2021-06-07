import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NumberPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white54,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _button(
            onPressed: () {},
            iconData: Icons.add,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Text(
              "1",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
          _button(
            onPressed: () {},
            iconData: Entypo.minus,
          )
        ],
      ),
    );
  }

  _button({
    required IconData iconData,
    required Function() onPressed,
  }) =>
      Container(
        decoration: BoxDecoration(
            color: Color(0xff8CCB75),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: IconButton(
          onPressed: () {},
          icon: Icon(iconData),
        ),
      );
}
