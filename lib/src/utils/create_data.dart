import 'package:insta_clone/src/app/repository/model/post.dart';
import 'package:insta_clone/src/app/repository/model/post_type_enum.dart';
import 'package:insta_clone/src/app/repository/model/status.dart';

class CreateData {
  static List<Status> statusList = [];
  static List<Post> postList = [];
  static int count = 0;
  static bool statusBool = true;
  static bool postBool = true;
  static const String _image = "https:/static.foxnews.com/foxnews.com/content/uploads/2019/07/NJtruck720.jpg";
  static const String _video1 = "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";
  static const String _video2 = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
  static const String _video = _video1;
  static void createStatus() {
    if (statusBool) {
      for (int i = 0; i < 10; i++) {
        statusList.add(
          Status(
            _image,
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
            _image,
            "Location $count",
            "Caption $count",
            [
              [
                PostTypeEnum.image.toString(),
                    _image,
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
            _image,
            "Location $count",
            "Caption $count",
            [
              [
                PostTypeEnum.video.toString(),
                    _video,
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
           _image,
            "Location $count",
            "Caption $count",
            null,
            _video,
          ),
        );
      }
    }
  }
}
