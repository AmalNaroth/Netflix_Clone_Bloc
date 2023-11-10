import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/constants.dart';
import 'package:netflix_clone/presentation/widgets/main_titile_widget.dart';

class IdleSearchScreen extends StatelessWidget {
  const IdleSearchScreen({super.key});

  final imageLIst =
      "https://image.tmdb.org/t/p/w500/dZbLqRjjiiNCpTYzhzL2NMvz4J0.jpg";

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
          child: ListView.separated(
              //shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: mwidth * .20,
                      width: mwidth * .35,
                      decoration: BoxDecoration(
                        //color: Colors.red,
                        image: DecorationImage(
                          image: NetworkImage(imageLIst),
                        ),
                      ),
                    ),
                    fWidth20,
                    const Expanded(
                      child: Text("Movie Name"),
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 18.5,
                        child: Icon(Icons.play_arrow),
                      ),
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
