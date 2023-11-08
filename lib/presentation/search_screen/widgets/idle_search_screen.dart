import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';

class IdleSearchScreen extends StatelessWidget {
  const IdleSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Expanded(
            child: Text(
              "Top searchs",
              textAlign: TextAlign.start,
            ),
          )
        ]),
        Expanded(
          child: ListView.separated(
              //shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      color: Colors.red,
                      height: 50,
                      width: 100,
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return fHight20;
              },
              itemCount: 20),
        )
      ],
    );
  }
}
