import 'package:flutter/material.dart';

class SquareImageWidget extends StatelessWidget {
  final String imageUrl;

  const SquareImageWidget(this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
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
