import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix_clone/core/api/api_doc.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/downloads/models/downloads_models.dart';
import 'package:netflix_clone/presentation/fast_laugh_screen/widgets/fast_laugh_action_widget.dart';
import 'package:video_player/video_player.dart';
import 'package:share_plus/share_plus.dart';

class VideoTileInheritedWidget extends InheritedWidget {
  final Widget childValue;
  final Downloads downloadsData;

  const VideoTileInheritedWidget(Key key,
      {required this.childValue, required this.downloadsData})
      : super(key: key, child: childValue);
  @override
  bool updateShouldNotify(covariant VideoTileInheritedWidget oldWidget) {
    return oldWidget.downloadsData != downloadsData;
  }

  static VideoTileInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoTileInheritedWidget>();
  }
}

class VideoTileWidget extends StatelessWidget {
  VideoTileWidget({super.key, required this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    final _posterPath =
        VideoTileInheritedWidget.of(context)!.downloadsData.posterPath;
    return Stack(
      children: [
        FastLaughVideoPlayer(
          videoPlayerUrl: videoUrls[index % videoUrls.length],
          onStateChange: (isPlaying) {},
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 27,
                backgroundColor: Colors.black.withOpacity(0.7),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.volume_mute),
                ),
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsetsDirectional.only(top: 20, end: 20),
                    color: Colors.black87,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                    child: const Text(
                      "16+",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          SizedBox(
                            height: 60,
                            child: CircleAvatar(
                              backgroundImage: _posterPath == null
                                  ? null
                                  : NetworkImage("$imageBaseUrl$_posterPath"),
                              radius: 25,
                            ),
                          ),
                          const Text(
                            "LUDO",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      fHight20,
                      ValueListenableBuilder(
                        valueListenable: likedVideoNOtifier,
                        builder: (context, value, _) {
                          if (value.contains(index)) {
                            return GestureDetector(
                              onTap: () {
                                value.remove(index);
                                likedVideoNOtifier.notifyListeners();
                              },
                              child: FastLaughActionWidget(
                                  actionIcon: Icons.emoji_emotions,
                                  iconColor: Colors.red,
                                  actionTitile: "LOL"),
                            );
                          }
                          return GestureDetector(
                            onTap: () {
                              value.add(index);
                              likedVideoNOtifier.notifyListeners();
                            },
                            child: FastLaughActionWidget(
                                actionIcon: Icons.emoji_emotions,
                                actionTitile: "LOL"),
                          );
                        },
                      ),
                      FastLaughActionWidget(
                          actionIcon: Icons.add, actionTitile: "My List"),
                      GestureDetector(
                        onTap: () async {
                          final movieName =
                              VideoTileInheritedWidget.of(context)!
                                  .downloadsData
                                  .movieTitile;
                          if (movieName != null) {
                            await Share.share(movieName);
                          }
                        },
                        child: FastLaughActionWidget(
                            actionIcon: Icons.share, actionTitile: "Share"),
                      ),
                      FastLaughActionWidget(
                          actionIcon: Icons.play_arrow, actionTitile: "Play")
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoPlayerUrl;
  final void Function(bool isPlaying) onStateChange;
  const FastLaughVideoPlayer({
    super.key,
    required this.videoPlayerUrl,
    required this.onStateChange,
  });

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.network(widget.videoPlayerUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
