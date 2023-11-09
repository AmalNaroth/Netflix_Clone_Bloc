import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class ComminSoonWidget extends StatelessWidget {
  const ComminSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mwidth = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 400,
          //color: Colors.red,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 1,
                child: SizedBox(
                  child: Column(
                    children: [
                      Text(
                        "FEB",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        "11",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: SizedBox(
                  //color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: mwidth * .45,
                            child: Image.network(
                              "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/a0GM57AnJtNi7lMOCamniiyV10W.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Positioned(
                            bottom: 20,
                            right: 20,
                            child: Icon(Icons.volume_off),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 10, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "TALLGIRL2",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.notifications_outlined),
                                    Text(
                                      "Remind Me",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                fWidth10,
                                Column(
                                  children: [
                                    Icon(Icons.info),
                                    Text(
                                      "Info",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            fHight10,
                            const Text(
                              "Coming on Friday",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            fHight10,
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/N-logo.png",
                                  height: 15,
                                ),
                                const Text(
                                  "FILM",
                                  style:
                                      TextStyle(fontSize: 8, letterSpacing: 2),
                                ),
                              ],
                            ),
                            fHight10,
                            const Text(
                              "Tall Girl2",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            fHight10,
                            const Text(
                              "ijciejnc dfjciduvcnmid vjdivm dfjidv idsjfnc dsjicnidsv idshvn dsijfcnweidfjcn s fjejfcnie jfciew jfinfc" +
                                  "ncjdnc e8dujvcidjui dnv uidjnvcuj",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}