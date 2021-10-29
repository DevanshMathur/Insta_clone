import 'package:flutter/material.dart';

class CircularImageWidget extends StatelessWidget {
  final String imageUrl;

  const CircularImageWidget(this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: FadeInImage.assetNetwork(
        placeholder: "assets/images/loading.jpg",
        image: 'https://picsum.photos/250?image=9',
        imageErrorBuilder: (context, error, stakeTrace) {
          return Image.asset("assets/images/image-not-found.jpg");
        },
      ),
    );
  }
}
