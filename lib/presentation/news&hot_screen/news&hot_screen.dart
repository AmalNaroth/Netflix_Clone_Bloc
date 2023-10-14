import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenNewsAndHot extends StatelessWidget {
  const ScreenNewsAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize:const Size.fromHeight(70), child: AppBarWidget(appbarTitle: "Hot & New")),
    );
  }
}