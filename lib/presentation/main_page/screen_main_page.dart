import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/download_screen/download_screen.dart';
import 'package:netflix_clone/presentation/fast_laugh_screen/fast_laugh_screen.dart';
import 'package:netflix_clone/presentation/home_screen/screen_home.dart';
import 'package:netflix_clone/presentation/main_page/widgets/bottom_navigationbar.dart';
import 'package:netflix_clone/presentation/news&hot_screen/news&hot_screen.dart';
import 'package:netflix_clone/presentation/search_screen/search_screen.dart';

ValueNotifier<int> bottomNavBarNotifier = ValueNotifier(0);

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  static const screenMainPage = "Screen-Main-Page";

  final screen = [
    ScreenHome(),
    const ScreenNewsAndHot(),
    const FastLaughScreen(),
    const ScreenSearch(),
    ScreenDownload()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: bottomNavBarNotifier,
          builder: (BuildContext context, int value, Widget? _) {
            return screen[value];
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
