import 'package:flutter/material.dart';

class FastLaughActionWidget extends StatelessWidget {
  IconData actionIcon;
  String actionTitile;
  FastLaughActionWidget(
      {super.key, required this.actionIcon, required this.actionTitile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        children: [
          Icon(actionIcon, size: 30),
          const SizedBox(
            height: 5,
          ),
          Text(actionTitile),
        ],
      ),
    );
  }
}
