import 'package:insta_clone/src/app/repository/model/post.dart';
import 'package:insta_clone/src/app/repository/model/post_type_enum.dart';
import 'package:insta_clone/src/app/repository/model/status.dart';

class CreateData {
  static List<Status> statusList = [];
  static List<Post> postList = [];
  static int count = 0;
  static bool statusBool = true;
  static bool postBool = true;

  static void createStatus() {
    if (statusBool) {
      for (int i = 0; i < 10; i++) {
        statusList.add(
          Status(
            "https: //static.foxnews.com/foxnews.com/content/uploads/2019/07/NJtruck720.jpg",
            "name${i + 1}",
          ),
        );
      }
    }
  }

  static void createPost(int post,int video, int reel) {
    if (postBool) {
      for (int i = 0; i <  post; i++) {
        count++;
        postList.add(
          Post(
            "Name $count",
            "https: //static.foxnews.com/foxnews.com/content/uploads/2019/07/NJtruck720.jpg",
            "Location $count",
            "Caption $count",
            [
              [
                PostTypeEnum.image.toString(),
                    "https: //static.foxnews.com/foxnews.com/content/uploads/2019/07/NJtruck720.jpg"
              ]
            ],
            null,
          ),
        );
      }
      for (int i = 0; i <  video; i++) {
        count++;
        postList.add(
          Post(
            "Name $count",
            "https: //static.foxnews.com/foxnews.com/content/uploads/2019/07/NJtruck720.jpg",
            "Location $count",
            "Caption $count",
            [
              [
                PostTypeEnum.video.toString(),
                    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
              ]
            ],
            null,
          ),
        );
      }
      for (int i = 0; i < reel; i++) {
        count++;
        postList.add(
          Post(
            "Name $count",
            "https: //static.foxnews.com/foxnews.com/content/uploads/2019/07/NJtruck720.jpg",
            "Location $count",
            "Caption $count",
            null,
            "https: //static.foxnews.com/foxnews.com/content/uploads/2019/07/NJtruck720.jpg",
          ),
        );
      }
    }
  }
}
