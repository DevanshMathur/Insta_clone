import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/ui/reels/widgets/reel_widget.dart';
import 'package:insta_clone/src/utils/create_data.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController(initialPage: 0);
    return PageView.builder(
      scrollDirection: Axis.vertical,
      controller: _controller,
      itemCount: 20,
      itemBuilder: (context,position) => ReelWidget(CreateData.testPost),
    );
  }
}
