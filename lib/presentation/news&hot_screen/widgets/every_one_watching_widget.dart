import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/result.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  HotandNewModelData everyoneWatchingData;

  EveryOneWatchingWidget({super.key, required this.everyoneWatchingData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          everyoneWatchingData.originalName!,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        fHight10,
        Text(
          everyoneWatchingData.overview!,
          style: const TextStyle(color: Colors.grey),
        ),
        fHight40,
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: NetworkImage(
                  everyoneWatchingData.getBackDropPath,
                ),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(Icons.network_check_outlined),
                  );
                },
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 10,
                right: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(.9),
                  child: const Icon(Icons.volume_off),
                ),
              )
            ],
          ),
        ),
        fHight20,
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                Icon(
                  Icons.share_outlined,
                  size: 35,
                ),
                Text(
                  "Share",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
            fWidth10,
            Column(
              children: [
                Icon(
                  Icons.add,
                  size: 40,
                ),
                Text(
                  "My List",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
            fWidth10,
            Column(
              children: [
                Icon(
                  Icons.play_arrow,
                  size: 40,
                ),
                Text(
                  "Play",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/N-logo.png",
              height: 15,
            ),
            const Text(
              "SERIES",
              style: TextStyle(fontSize: 8, letterSpacing: 2),
            ),
          ],
        ),
      ],
    );
  }
}
