import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/repository/model/post.dart';
import 'package:insta_clone/src/app/ui/widgets/square_image_view.dart';
import 'package:insta_clone/src/app/ui/widgets/video_widget.dart';

import 'circular_image_widget.dart';

class ReelWidget extends StatelessWidget {
  const ReelWidget(this.post, {Key? key}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Colors.black
            : Colors.white,
        // border: Border.all(color: Colors.black),
      ),
      child: Stack(
        children: [
          VideoWidget(post.reelUrl!),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "Reels",
                  style: TextStyle(
                    fontSize: 20,
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 30,
                              child: CircularImageWidget(post.profileUrl, 30),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                post.name,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            post.caption,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              post.location,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 4, right: 2),
                              child: Icon(
                                Icons.person_outlined,
                                size: 16,
                              ),
                            ),
                            Text(post.taggedUsers.length.toString()),
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 3, bottom: 3),
                          child: Icon(
                            Icons.favorite_border_outlined,
                          ),
                        ),
                        Text(post.likeCount.toString()),
                        const Padding(
                          padding: EdgeInsets.only(top: 3, bottom: 3),
                          child: Icon(
                            Icons.comment_outlined,
                          ),
                        ),
                        Text(post.commentCount.toString()),
                        const Padding(
                          padding: EdgeInsets.only(top: 3, bottom: 3),
                          child: Icon(
                            Icons.share_outlined,
                          ),
                        ),
                        const Icon(Icons.more_vert_outlined),
                        Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: SizedBox(
                            height: 25,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: SquareImageWidget(post.profileUrl),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
