import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/ui/widgets/square_image_view.dart';
import 'package:insta_clone/src/utils/create_data.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  static const String url =
      "https:/static.foxnews.com/foxnews.com/content/uploads/2019/07/NJtruck720.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search_outlined),
          )
        ],
      ),
      body: GridView.builder(
        itemCount: 40,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemBuilder: (BuildContext context, int index) {
          return const SquareImageWidget(CreateData.image, false);
        },
      ),
    );
  }
}
