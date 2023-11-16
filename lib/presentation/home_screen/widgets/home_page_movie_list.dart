import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/result.dart';
import 'package:netflix_clone/presentation/widgets/common_image_card_wiget.dart';
import 'package:netflix_clone/presentation/widgets/main_titile_widget.dart';

class HomePageMovieList extends StatelessWidget {
  String movieTitle;
  List<HotandNewModelData> data;
  HomePageMovieList(
      {super.key, required this.movieTitle, required this.data});

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
            itemCount: data.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CommonImageWidget(
                imageLink: data[index].getPosterPath,
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
