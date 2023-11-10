import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/fast_laugh_screen/widgets/fast_laugh_action_widget.dart';

class VideoTileWidget extends StatelessWidget {
  VideoTileWidget({super.key, required this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 27,
                backgroundColor: Colors.black.withOpacity(0.7),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.volume_mute),
                ),
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(top: 20, end: 20),
                    color: Colors.black87,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                    child: const Text(
                      "16+",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          SizedBox(
                            height: 60,
                            child: CircleAvatar(
                              radius: 25,
                            ),
                          ),
                          Text(
                            "LUDO",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      fHight20,
                      FastLaughActionWidget(
                          actionIcon: Icons.emoji_emotions,
                          actionTitile: "LOL"),
                      FastLaughActionWidget(
                          actionIcon: Icons.add, actionTitile: "My List"),
                      FastLaughActionWidget(
                          actionIcon: Icons.share, actionTitile: "Share"),
                      FastLaughActionWidget(
                          actionIcon: Icons.play_arrow, actionTitile: "Play")
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
