import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/ui/widgets/square_image_view.dart';

class CircularImageWidget extends StatelessWidget {
  final String imageUrl;
  final double size;

  const CircularImageWidget(this.imageUrl, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size/2),
        child: SquareImageWidget(imageUrl,true),
      ),
    );
  }
}
