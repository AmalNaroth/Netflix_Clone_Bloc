import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class TopSeachTile extends StatelessWidget {
  const TopSeachTile(
      {super.key,
      required this.mwidth,
      required this.title,
      required this.imageUrl});

  final double mwidth;
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: mwidth * .20,
          width: mwidth * .35,
          decoration: BoxDecoration(
            //color: Colors.red,
            image: DecorationImage(
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        fWidth20,
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        fWidth10,
        const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 18.5,
            child: Icon(Icons.play_arrow),
          ),
        )
      ],
    );
  }
}
