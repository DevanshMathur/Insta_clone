import 'package:flutter/material.dart';

class SquareImageWidget extends StatelessWidget {
  final String imageUrl;
  const SquareImageWidget(this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      // fit: BoxFit.fitWidth,
      placeholder: "assets/images/loading.jpg",
      image: 'https://picsum.photos/250?image=9',
      imageErrorBuilder: (context, error, stakeTrace) {
        return Image.asset("assets/images/image-not-found.jpg");
      },
    );
  }
}
