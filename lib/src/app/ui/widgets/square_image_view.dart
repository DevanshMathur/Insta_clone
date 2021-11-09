import 'package:flutter/material.dart';

class SquareImageWidget extends StatelessWidget {
  final String imageUrl;
  final bool isCover;

  const SquareImageWidget(this.imageUrl, this.isCover, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      fit: isCover ? BoxFit.cover : BoxFit.none,
      placeholder: "assets/images/loading.jpg",
      image: imageUrl,
      imageErrorBuilder: (context, error, stakeTrace) {
        return Image.asset(
          "assets/images/image-not-found.png",
          fit: BoxFit.cover,
        );
      },
    );
  }
}
