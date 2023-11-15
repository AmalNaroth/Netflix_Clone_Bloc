import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix_clone/presentation/fast_laugh_screen/widgets/video_tile_widget.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(
        const FastLaughEvent.initialized(),
      );
      debugPrint("rebuild fast laugh");
    });
    return SafeArea(
      child: BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
          if (state.isError) {
            return const Center(
              child: Text("Somthing error"),
            );
          } else if (state.isloading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.red,
              ),
            );
          } else if (state.videoList.isEmpty) {
            return const Center(
              child: Text("No video found"),
            );
          }
          return PageView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            children: List.generate(
              state.videoList.length,
              (index) => VideoTileInheritedWidget(
                Key(
                  index.toString(),
                ),
                childValue: VideoTileWidget(index: index),
                downloadsData: state.videoList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
