import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/repository/model/status.dart';
import 'package:insta_clone/src/app/ui/widgets/circular_image_widget.dart';

class StatusWidget extends StatelessWidget {
  final Status user;

  const StatusWidget(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      child: Column(
        children: [
          SizedBox(
            width: 58,
            child: CircularImageWidget(user.imageUrl),
          ),
          Text(
            user.name,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
