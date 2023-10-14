import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  String appbarTitle;
  AppBarWidget({
    super.key,
    required this.appbarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              appbarTitle,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),
          const Icon(Icons.cast),
          fWidth10,
          Container(
            height: 30,
            width: 30,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
