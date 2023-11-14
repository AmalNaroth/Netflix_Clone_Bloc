import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/download_bloc.dart';
import 'package:netflix_clone/core/api/api_doc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final _widgetList = [
    Section02(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBarWidget(
          appbarTitle: "Downloads",
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: _widgetList.length,
        itemBuilder: (context, index) {
          return _widgetList[index];
        },
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {super.key,
      required this.imagesLink,
      this.rotateAngle = 0,
      required this.marginSize,
      required this.size});
  final String imagesLink;
  final double rotateAngle;
  final EdgeInsets marginSize;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: marginSize,
      child: Transform.rotate(
        angle: rotateAngle * pi / 180,
        child: Container(
          // margin: marginSize,
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(imagesLink), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}

class Section02 extends StatelessWidget {
  const Section02({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DownloadBloc>(context).add(
        const DownloadEvent.getDownloadImage(),
      );
    });
    final mWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Row(
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
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
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
        BlocBuilder<DownloadBloc, DownloadState>(
          builder: (context, state) {
            return SizedBox(
              height: mWidth / 1.2,
              width: mWidth,
              // color: Colors.white,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: greyColor.shade700,
                          radius: mWidth * .37,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              DownloadsImageWidget(
                                imagesLink:
                                    "$imageBaseUrl${state.downloads[0].posterPath}",
                                rotateAngle: -20,
                                marginSize: const EdgeInsets.only(
                                    bottom: 20, right: 130),
                                size: Size(mWidth * .40, mWidth * .55),
                              ),
                              DownloadsImageWidget(
                                imagesLink:
                                    '$imageBaseUrl${state.downloads[1].posterPath}',
                                rotateAngle: 20,
                                marginSize: const EdgeInsets.only(
                                    bottom: 20, left: 130),
                                size: Size(mWidth * .40, mWidth * .55),
                              ),
                              DownloadsImageWidget(
                                imagesLink:
                                    '$imageBaseUrl${state.downloads[2].posterPath}',
                                marginSize: const EdgeInsets.only(top: 10),
                                size: Size(mWidth * .50, mWidth * .65),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            textStyle:
                const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          child: const Text("Set Up"),
        ),
        fHight20,
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: whiteColor,
              foregroundColor: blackColor,
              minimumSize: const Size.fromHeight(50),
              textStyle:
                  const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            child: const Text("See What You Can Download"),
          ),
        )
      ],
    );
  }
}
