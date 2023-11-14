import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/presentation/search_screen/widgets/idle_search_screen.dart';
import 'package:netflix_clone/presentation/search_screen/widgets/search_result_widget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SearchBloc>().add(
            const SearchEvent.initialize(),
          );
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                style: const TextStyle(color: Colors.white),
                backgroundColor: Colors.grey[800],
                prefixIcon:
                    const Icon(CupertinoIcons.search, color: Colors.grey),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                onChanged: (value) {
                  BlocProvider.of<SearchBloc>(context).add(
                    SearchEvent.searchMovie(movieQuery: value),
                  );
                },
              ),
              // const Expanded(
              //   child: IdleSearchScreen(),
              // ),
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state.searchReult.isNotEmpty) {
                      return const SearchResultWidget();
                    } else {
                      return const IdleSearchScreen();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
