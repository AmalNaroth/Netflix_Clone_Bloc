import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/result.dart';

class ComminSoonWidget extends StatelessWidget {
  HotandNewModelData comingSoonValue;
  ComminSoonWidget({super.key, required this.comingSoonValue});

  @override
  Widget build(BuildContext context) {
    final mwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                child: Column(
                  children: [
                    Text(
                      comingSoonValue.formattedMonth,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Text(
                      comingSoonValue.formattedDay,
                      style: const TextStyle(
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
                            comingSoonValue.getBackDropPath,
                            fit: BoxFit.cover,
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  comingSoonValue.originalTitle!,
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  // maxLines: 1,
                                  // overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const Column(
                                children: [
                                  Icon(Icons.notifications_outlined),
                                  Text(
                                    "Remind Me",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                              fWidth10,
                              const Column(
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
                          Text(
                            "Coming on ${comingSoonValue.formattedDayLetter}",
                            style: const TextStyle(
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
                                style: TextStyle(fontSize: 8, letterSpacing: 2),
                              ),
                            ],
                          ),
                          fHight10,
                          Text(
                            comingSoonValue.originalTitle!,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          fHight10,
                          Text(
                            comingSoonValue.overview!,
                            style: const TextStyle(color: Colors.grey),
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
      ],
    );
  }
}
