import 'dart:math';

import 'package:flutter/material.dart';

class LikeWidget extends StatefulWidget {
  const LikeWidget({Key? key}) : super(key: key);

  @override
  _LikeWidgetState createState() => _LikeWidgetState();
}

class _LikeWidgetState extends State<LikeWidget> {
  bool isLiked = Random().nextBool();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isLiked = !isLiked;
      }),
      child: isLiked
          ? Icon(
              Icons.favorite_outlined,
        color: Colors.red[900],
            )
          : const Icon(
              Icons.favorite_border_outlined,
            ),
    );
  }
}
