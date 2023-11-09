import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/widgets/common_image_card_wiget.dart';
import 'package:netflix_clone/presentation/widgets/main_titile_widget.dart';

class HomePageMovieList extends StatelessWidget {
  String movieTitle;
  String imageLink;
  HomePageMovieList(
      {super.key, required this.movieTitle, required this.imageLink});

  @override
  Widget build(BuildContext context) {
    final mwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        MainTitleWidget(titleText: movieTitle, textSize: 23),
        fHight10,
        LimitedBox(
          maxHeight: mwidth * .53,
          child: ListView.separated(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CommonImageWidget(
                imageLink: imageLink,
                imageSize: Size(mwidth * .35, 0),
              );
            },
            separatorBuilder: (context, index) => fWidth10,
          ),
        )
      ],
    );
  }
}
