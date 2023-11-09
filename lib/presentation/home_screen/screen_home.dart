import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/home_screen/widgets/home_page_movie_list.dart';
import 'package:netflix_clone/presentation/home_screen/widgets/top10_tv_show_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  List<Widget> _homeScreenWidgets = [
    HomePageMovieList(
      imageLink:
          "https://image.tmdb.org/t/p/w500/aTvePCU7exLepwg5hWySjwxojQK.jpg",
      movieTitle: "Released in the Past Year",
    ),
    HomePageMovieList(
      imageLink:
          "https://image.tmdb.org/t/p/w500/aTvePCU7exLepwg5hWySjwxojQK.jpg",
      movieTitle: "Trending Now",
    ),
    Top10TvShows(
      movieTitle: "Top 10 Tv Shows In India Today",
      imageLink:
          "https://image.tmdb.org/t/p/w500/b0Ej6fnXAP8fK75hlyi2jKqdhHz.jpg",
    ),
    HomePageMovieList(
      imageLink:
          "https://image.tmdb.org/t/p/w500/aTvePCU7exLepwg5hWySjwxojQK.jpg",
      movieTitle: "Tense Drama",
    ),
    HomePageMovieList(
      imageLink:
          "https://image.tmdb.org/t/p/w500/aTvePCU7exLepwg5hWySjwxojQK.jpg",
      movieTitle: "South Indian Cinema",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, bool scrollValue, Widget? _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
                scrollNotifier.notifyListeners();
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
                scrollNotifier.notifyListeners();
              }
              return true;
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  ListView(
                    children: [
                      BackgroundCardWidget(mwidth: mwidth),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return _homeScreenWidgets[index];
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 20),
                        itemCount: _homeScreenWidgets.length,
                      ),
                    ],
                  ),
                  scrollValue
                      ? AnimatedContainer(
                          duration: Duration(milliseconds: 1000),
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          height: 100,
                          color: Colors.black.withOpacity(0.4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/N-logo.png",
                                    height: 50,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.cast),
                                      fWidth20,
                                      Container(
                                        color: Colors.blue,
                                        height: 30,
                                        width: 30,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "TV Shows",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "Movies",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "Categories",
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class BackgroundCardWidget extends StatelessWidget {
  const BackgroundCardWidget({
    super.key,
    required this.mwidth,
  });

  final double mwidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: mwidth * 1.3,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
                image: NetworkImage(
                    "https://image.tmdb.org/t/p/w500/aTvePCU7exLepwg5hWySjwxojQK.jpg"),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  children: [
                    Icon(Icons.add),
                    Text("My List"),
                  ],
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 30,
                  ),
                  label: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Play"),
                  ),
                ),
                const Column(
                  children: [Icon(Icons.info_outline), Text("Info")],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
