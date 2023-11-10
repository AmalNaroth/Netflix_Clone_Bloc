import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  const EveryOneWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Friends",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        fHight10,
        Text(
          "mfkencj fceuhcn eudhfcu dcuinudfnc euhdncensd ceuidfnchnds cvhniednvc dsnc djsncjn cjhid cnsdcujhnds" +
              "jcmi jic ijcidjci dijcim",
          style: TextStyle(color: Colors.grey),
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
                    "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/yj2SVz5I2HuQD84g633W2tijtKi.jpg"),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 10,
                right: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(.9),
                  child: Icon(Icons.volume_off),
                ),
              )
            ],
          ),
        ),
        fHight20,
        Row(
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
