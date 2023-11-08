import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/search_screen/widgets/idle_search_screen.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
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
              ),
              const Expanded(
                child: IdleSearchScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
