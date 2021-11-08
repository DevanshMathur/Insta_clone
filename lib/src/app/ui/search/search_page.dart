import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/ui/widgets/square_image_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  static const String url =
      "https:/static.foxnews.com/foxnews.com/content/uploads/2019/07/NJtruck720.jpg";

  @override
  Widget build(BuildContext context) {
    double size = 200.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Screen"),
      ),
      body: Center(
        child: Container(
          height: size,
          width: size,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: const ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(98)),
            child: SquareImageWidget(url),
          ),
        ),
      ),
    );
  }
}
