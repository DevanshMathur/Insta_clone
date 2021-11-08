import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/ui/widgets/reel_widget.dart';
import 'package:insta_clone/src/utils/create_data.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Reels Screen")),
      body: ReelWidget(CreateData.testPost),
    );
  }
}
