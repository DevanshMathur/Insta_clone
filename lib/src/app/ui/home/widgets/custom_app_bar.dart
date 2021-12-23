import 'package:flutter/material.dart';
import 'package:insta_clone/src/navigation/routes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 50,
      title: Text(
        "Instagram",
        style: Theme.of(context).textTheme.headline1,
      ),
      actions: [
        InkWell(
          onTap: () => Navigator.pushNamed(context, Routes.addPostScreen),
          child: const Padding(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.add_box_outlined,
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.pushNamed(context, Routes.chatScreen),
          child: const Padding(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.question_answer_outlined,
            ),
          ),
        ),
      ],
    );
  }
}
