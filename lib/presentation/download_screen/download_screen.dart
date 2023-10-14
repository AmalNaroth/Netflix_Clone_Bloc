import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  List<String> imagesLink = [
    "https://image.tmdb.org/t/p/w500/aTvePCU7exLepwg5hWySjwxojQK.jpg",
    "https://image.tmdb.org/t/p/w500/b0Ej6fnXAP8fK75hlyi2jKqdhHz.jpg",
    "https://image.tmdb.org/t/p/w500/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.red,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBarWidget(
          appbarTitle: "Downloads",
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        children: [
          Row(
            children: [
              Icon(
                Icons.settings,
                size: 20,
              ),
              fWidth10,
              Text(
                "Smart Downloads",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          fHight30,
          Text(
            "Introducing Downloads for you",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
            child: Text(
              "We'II download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\nphone.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.3,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  height: 1.2),
            ),
          ),
          Container(
            height: mWidth / 1.2,
            width: mWidth,
           // color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: greyColor,
                  radius: mWidth * .34,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      DownloadsImageWidget(
                          mWidth: mWidth,
                          imagesLink: imagesLink[0],
                          rotateAngle: 18,
                          marginSize: EdgeInsets.only(left: 110,),),
                      DownloadsImageWidget(
                          mWidth: mWidth,
                          imagesLink: imagesLink[1],
                          rotateAngle: -18,
                          marginSize: EdgeInsets.only(right: 110,),),
                      DownloadsImageWidget(
                          mWidth: mWidth, imagesLink: imagesLink[2],
                          marginSize: EdgeInsets.only(top: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Set Up"),
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
              textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          fHight20,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("See What You Can Download"),
              style: ElevatedButton.styleFrom(
                backgroundColor: whiteColor,
                foregroundColor: blackColor,
                minimumSize: const Size.fromHeight(50),
                textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {super.key,
      required this.mWidth,
      required this.imagesLink,
      this.rotateAngle = 0,
      required this.marginSize});

  final double mWidth;
  final String imagesLink;
  final double rotateAngle;
  final EdgeInsets marginSize;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotateAngle * pi / 180,
      child: Container(
        margin: marginSize,
        height: mWidth * .55,
        width: mWidth * .4,
        decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(imagesLink), fit: BoxFit.cover)),
      ),
    );
  }
}
