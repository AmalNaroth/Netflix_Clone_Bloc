import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/home/home_screen_bloc.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/result.dart';
import 'package:netflix_clone/presentation/home_screen/widgets/home_page_movie_list.dart';
import 'package:netflix_clone/presentation/home_screen/widgets/top10_tv_show_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HomeScreenBloc>(context)
          .add(const HomeScreenEvent.initialized());
    });
    final mwidth = MediaQuery.of(context).size.width;
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        if (state.isError) {
          return const Center(
            child: Text("Error occure"),
          );
        } else if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 2,
            ),
          );
        }
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
                          BackgroundCardWidget(
                              mwidth: mwidth,
                              imageUrl:
                                  state.sountIndianCinemaList[0].getPosterPath),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              HomeScreenWidgetList widgetList =
                                  HomeScreenWidgetList(
                                releasedList: state.realsedInthePastList,
                                trendingList: state.trendingNowList,
                                topTenList: state.topTenList,
                                tenseList: state.tenseDramaList,
                                southIndianList: state.sountIndianCinemaList,
                              );
                              return widgetList.homeScreenWidgets[index];
                            },
                            separatorBuilder: (context, index) => fHight20,
                            itemCount: HomeScreenWidgetList(
                              releasedList: state.realsedInthePastList,
                              trendingList: state.trendingNowList,
                              topTenList: state.topTenList,
                              tenseList: state.tenseDramaList,
                              southIndianList: state.sountIndianCinemaList,
                            ).homeScreenWidgets.length,
                          )
                        ],
                      ),
                      scrollValue
                          ? AnimatedContainer(
                              duration: const Duration(milliseconds: 1000),
                              padding: const EdgeInsets.all(10),
                              width: double.infinity,
                              height: 100,
                              color: Colors.black.withOpacity(0.4),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                          const Icon(Icons.cast),
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
                                  const Row(
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
      },
    );
  }
}

class BackgroundCardWidget extends StatelessWidget {
  String imageUrl;
  BackgroundCardWidget(
      {super.key, required this.mwidth, required this.imageUrl});

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
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
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

class HomeScreenWidgetList {
  List<HotandNewModelData> releasedList;
  List<HotandNewModelData> trendingList;
  List<HotandNewModelData> topTenList;
  List<HotandNewModelData> tenseList;
  List<HotandNewModelData> southIndianList;

  HomeScreenWidgetList({
    required this.releasedList,
    required this.trendingList,
    required this.topTenList,
    required this.tenseList,
    required this.southIndianList,
  });

  List<Widget> get homeScreenWidgets {
    return [
      HomePageMovieList(
          data: releasedList, movieTitle: "Released in the Past Year"),
      HomePageMovieList(data: trendingList, movieTitle: "Trending Now"),
      Top10TvShows(
          data: topTenList, movieTitle: "Top 10 Tv Shows In India Today"),
      HomePageMovieList(data: tenseList, movieTitle: "Tense Drama"),
      HomePageMovieList(
          data: southIndianList, movieTitle: "South Indian Cinema"),
    ];
  }
}
