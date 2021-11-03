import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(this.message, this.shareNew, {Key? key}) : super(key: key);
  final Function message;
  final Function shareNew;

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
          onTap: () => shareNew(),
          child: const Padding(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.add_box_outlined,
            ),
          ),
        ),
        InkWell(
          onTap: () => message(),
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
