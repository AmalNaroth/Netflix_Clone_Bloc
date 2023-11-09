import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/news&hot_screen/widgets/comming_soon_widget.dart';
import 'package:netflix_clone/presentation/news&hot_screen/widgets/every_one_watching_widget.dart';

class ScreenNewsAndHot extends StatelessWidget {
  const ScreenNewsAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    final mwidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: const Text(
              "Hot & New",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            actions: [
              const Icon(Icons.cast),
              fWidth10,
              Container(
                // height: 30,
                width: 30,
                color: Colors.blue,
              )
            ],
            bottom: TabBar(
              padding: EdgeInsets.symmetric(horizontal: 10),
              labelColor: Colors.black,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.white,
              isScrollable: true,
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              tabs: const [
                Tab(
                  text: "🍿 Comming Soon",
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return const ComminSoonWidget();
                },
                separatorBuilder: (context, index) {
                  return fHight10;
                },
                itemCount: 10),
            ListView.separated(
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return const EveryOneWatchingWidget();
                },
                separatorBuilder: (context, index) {
                  return fHight10;
                },
                itemCount: 10),
          ],
        ),
      ),
    );
  }
}
