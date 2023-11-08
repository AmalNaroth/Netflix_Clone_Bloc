import 'package:flutter/material.dart';

class searchTextTitle extends StatelessWidget {
  String titleText;
  searchTextTitle({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Text(
          titleText,
          textAlign: TextAlign.start,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
    ]);
  }
}
