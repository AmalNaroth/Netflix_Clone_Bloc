import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/api/api_doc.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/search_screen/widgets/top_search_tile.dart';
import 'package:netflix_clone/presentation/widgets/main_titile_widget.dart';

class IdleSearchScreen extends StatelessWidget {
  const IdleSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mwidth = MediaQuery.of(context).size.width;
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        fHight20,
        MainTitleWidget(titleText: "Top Searches", textSize: 28),
        fHight20,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text("Error found"),
                );
              } else if (state.idleMovie.isEmpty) {
                return const Center(
                  child: Text("No data found"),
                );
              }
              return ListView.separated(
                  //shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final imageData ="$imageBaseUrl${state.idleMovie[index].backdropPath}"; 
                    return TopSeachTile(
                      mwidth: mwidth,
                      imageUrl:imageData,
                      title: state.idleMovie[index].movieTitile,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return fHight20;
                  },
                  itemCount: state.idleMovie.length);
            },
          ),
        )
      ],
    );
  }
}
