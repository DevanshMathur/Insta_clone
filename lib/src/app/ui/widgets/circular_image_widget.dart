import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/ui/widgets/square_image_view.dart';

class CircularImageWidget extends StatelessWidget {
  final String imageUrl;

  const CircularImageWidget(this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: SquareImageWidget(imageUrl),
    );
  }
}
