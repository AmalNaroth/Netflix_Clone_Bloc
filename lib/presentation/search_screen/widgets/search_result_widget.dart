import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/widgets/main_titile_widget.dart';
import 'package:netflix_clone/presentation/widgets/common_image_card_wiget.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  final imageLink =
      "https://image.tmdb.org/t/p/w500/aTvePCU7exLepwg5hWySjwxojQK.jpg";

  @override
  Widget build(BuildContext context) {
    final mwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        fHight20,
        MainTitleWidget(titleText: "Movies & Tv",textSize: 28),
        fHight20,
        Expanded(
            child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1/1.4,
          children: List.generate(
            20,
            (index) {
              return CommonImageWidget(
                imageLink: imageLink,
                imageSize:const Size(0, 0),
              );
            },
          ),
        ))
      ],
    );
  }
}

