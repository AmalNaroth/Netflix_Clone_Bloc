import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/result.dart';
import 'package:netflix_clone/presentation/widgets/common_image_card_wiget.dart';
import 'package:netflix_clone/presentation/widgets/main_titile_widget.dart';

class Top10TvShows extends StatelessWidget {
  String movieTitle;
  List<HotandNewModelData> data;
  Top10TvShows({super.key, required this.movieTitle, required this.data});

  @override
  Widget build(BuildContext context) {
    final mwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        MainTitleWidget(titleText: movieTitle, textSize: 23),
        fHight10,
        LimitedBox(
          maxHeight: mwidth * .53,
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 40,
                        height: 150,
                        //color: Colors.green,
                      ),
                      CommonImageWidget(
                        imageLink: data[index].getPosterPath,
                        imageSize: Size(mwidth * .35, mwidth * .53),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: -35, // Set top to zero
                    left: 0, // Adjust left based on your layout
                    child: BorderedText(
                      strokeWidth: 5,
                      strokeColor: Colors.white,
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                            fontSize: 150,
                            decoration: TextDecoration.none,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
