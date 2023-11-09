import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/fase_laugh_screen/widgets/fast_laugh_action_widget.dart';
import 'package:netflix_clone/presentation/fase_laugh_screen/widgets/video_tile_widget.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: List.generate(
          10,
          (index) => VideoTileWidget(
            index: index,
          ),
        ),
      ),
    );
  }
}

