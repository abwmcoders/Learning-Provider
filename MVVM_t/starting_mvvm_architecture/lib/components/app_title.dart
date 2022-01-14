import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppTitle extends StatelessWidget {
  final String text;
  const AppTitle({Key? key, this.text = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:const TextStyle(
        fontStyle: FontStyle.italic,
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
