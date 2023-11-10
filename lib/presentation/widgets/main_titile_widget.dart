import 'package:flutter/material.dart';

class MainTitleWidget extends StatelessWidget {
  String titleText;
  double textSize;
  MainTitleWidget({super.key, required this.titleText, required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Text(
          titleText,
          textAlign: TextAlign.start,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize),
        ),
      ),
    ]);
  }
}
