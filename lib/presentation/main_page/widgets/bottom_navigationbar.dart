import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/main_page/screen_main_page.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: bottomNavBarNotifier,
        builder: (BuildContext context, int changeValue, Widget? _) {
          return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: whiteColor,
              unselectedItemColor: greyColor,
              currentIndex: changeValue,
              onTap: (value) {
                bottomNavBarNotifier.value = value;
                bottomNavBarNotifier.notifyListeners();
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shop_2_outlined), label: "New & Hot"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions), label: "Fase laugh"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download), label: "Downloads")
              ]);
        });
  }
}
