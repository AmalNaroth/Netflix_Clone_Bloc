import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/search_screen/widgets/search_titile_text_widget.dart';

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
        searchTextTitle(titleText: "Movies & Tv"),
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

class CommonImageWidget extends StatelessWidget {
  const CommonImageWidget({
    super.key,
    required this.imageLink,
    required this.imageSize,
  });

  final Size imageSize;

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      //width: imageSize.width,
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          image: NetworkImage(imageLink),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
