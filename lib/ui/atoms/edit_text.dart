import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  String hintText;

  EditText({
    this.hintText = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      // ),
      child: TextFormField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: this.hintText,
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Theme.of(context).accentColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Theme.of(context).errorColor),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            // borderSide:
            // BorderSide(color: DefaultTheme.primaryDisabledColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Theme.of(context).errorColor),
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
