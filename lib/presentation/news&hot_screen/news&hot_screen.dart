import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/hotandnew/hotand_new_bloc.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/news&hot_screen/widgets/comming_soon_widget.dart';
import 'package:netflix_clone/presentation/news&hot_screen/widgets/every_one_watching_widget.dart';

class ScreenNewsAndHot extends StatelessWidget {
  const ScreenNewsAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotandNewBloc>(context).add(
        const HotandNewEvent.initialized(),
      );
    });
    final mwidth = MediaQuery.of(context).size.width;
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotandNewBloc>(context).add(
          const HotandNewEvent.initialized(),
        );
      },
      child: DefaultTabController(
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
                    text: "🍿 Coming Soon",
                  ),
                  Tab(
                    text: "👀 Everyone's Watching",
                  )
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              ComingSoonList(),
              EveryOneWatchList(),
            ],
          ),
        ),
      ),
    );
  }
}

class EveryOneWatchList extends StatelessWidget {
  const EveryOneWatchList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotandNewBloc, HotandNewState>(
      builder: (context, state) {
        if (state.isError) {
          return const Center(
            child: Text("Error found"),
          );
        } else if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.commingSoonList.isEmpty) {
          return const Center(
            child: Text("NO data found"),
          );
        } else {
          return ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return EveryOneWatchingWidget(
                  everyoneWatchingData: state.everyoneWatchingList[index],
                );
              },
              separatorBuilder: (context, index) {
                return fHight10;
              },
              itemCount: state.everyoneWatchingList.length);
        }
      },
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotandNewBloc, HotandNewState>(
      builder: (context, state) {
        if (state.isError) {
          return const Center(
            child: Text("Error found"),
          );
        } else if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.commingSoonList.isEmpty) {
          return const Center(
            child: Text("No data found"),
          );
        } else {
          return ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return ComminSoonWidget(
                  comingSoonValue: state.commingSoonList[index],
                );
              },
              separatorBuilder: (context, index) {
                return fHight40;
              },
              itemCount: state.commingSoonList.length);
        }
      },
    );
  }
}
