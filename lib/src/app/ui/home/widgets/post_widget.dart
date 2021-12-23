import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/repository/model/post.dart';
import 'package:insta_clone/src/app/ui/widgets/circular_image_widget.dart';
import 'package:insta_clone/src/app/ui/widgets/like_widget.dart';
import 'package:insta_clone/src/app/ui/widgets/square_image_view.dart';
import 'package:insta_clone/src/app/ui/widgets/video_widget.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget(this.post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(post.posts![0][0]);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 42,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2, 2, 5),
                    child: CircularImageWidget(post.profileUrl, 35),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.name,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          post.location,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Icon(Icons.more_vert_outlined)
          ],
        ),
        SizedBox(
          height: post.posts != null ? 250 : 400,
          width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: post.posts != null
              ? post.posts![0][0] == PostTypeEnum.image.toString()
                  ? SquareImageWidget(post.posts![0][1], false)
                  : VideoWidget(post.posts![0][1])
              : VideoWidget(post.reelUrl!),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  LikeWidget(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(4,0,4,0),
                    child: Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  Icon(
                    Icons.share_outlined,
                  ),
                ],
              ),
              const Icon(
                Icons.bookmark_border_outlined,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2),
          child: SizedBox(
            height: 42,
            child: Text(
              post.caption,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
      ],
    );
  }
}
