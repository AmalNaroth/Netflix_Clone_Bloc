import 'package:flutter/material.dart';

class CommonImageWidget extends StatelessWidget {
  const CommonImageWidget({
    super.key,
    required this.imageLink,
    required this.imageSize,
  });

  final Size imageSize;

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageSize.height,
      width: imageSize.width,
      decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: NetworkImage(imageLink),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
