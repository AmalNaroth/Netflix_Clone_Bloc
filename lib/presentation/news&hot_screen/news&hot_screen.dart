import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class ScreenNewsAndHot extends StatelessWidget {
  const ScreenNewsAndHot({super.key});

  @override
  Widget build(BuildContext context) {
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
              labelColor: Colors.black,
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
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
          Text("mnckdmv"),
          Text("5262"),
        ]),
      ),
    );
  }
}
