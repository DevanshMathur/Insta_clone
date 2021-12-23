import 'package:insta_clone/src/app/repository/model/post.dart';
import 'package:insta_clone/src/app/repository/model/status.dart';

class CreateData {
  static int count = 0;
  static bool postBool = true;
  static bool statusBool = true;
  static List<Post> postList = [];
  static List<Status> statusList = [];

  static const String _i1 =
      "https://static.foxnews.com/foxnews.com/content/uploads/2019/07/NJtruck720.jpg";
  static const String _v1 =
      "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";
  static const String _v2 =
      "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

  static const String image = "_i1";
  static const String video = "_v1";
  static Post testPost = Post(
    "Test Name",
    image,
    "Test Location",
    "Test Caption",
    [
      [
        PostTypeEnum.image.toString(),
        image,
      ],
      [
        PostTypeEnum.video.toString(),
        video,
      ],
    ],
    video,
    list,
    3,
    4,
  );

  static const List<String> list = [
    "User1",
    "User2",
    "User3",
    "User4",
    "User5",
    "User6",
    "User7",
    "User8",
    "User9",
    "User10",
  ];

  static void createStatus() {
    if (statusBool) {
      for (int i = 0; i < 10; i++) {
        statusList.add(
          Status(
            image,
            "name${i + 1}",
          ),
        );
      }
    }
  }

  static void createPost(int post, int video, int reel) {
    if (postBool) {
      for (int i = 0; i < post; i++) {
        count++;
        postList.add(
          Post(
            "Name $count",
            image,
            "Location $count",
            "Caption $count",
            [
              [
                PostTypeEnum.image.toString(),
                image,
              ]
            ],
            null,
            list,
            6,
            8,
          ),
        );
      }
      for (int i = 0; i < video; i++) {
        count++;
        postList.add(
          Post(
            "Name $count",
            image,
            "Location $count",
            "Caption $count",
            [
              [
                PostTypeEnum.video.toString(),
                CreateData.video,
              ]
            ],
            null,
            list,
            3,
            6,
          ),
        );
      }
      for (int i = 0; i < reel; i++) {
        count++;
        postList.add(
          Post(
            "Name $count",
            image,
            "Location $count",
            "Caption $count",
            null,
            CreateData.video,
            list,
            7,
            4,
          ),
        );
      }
    }
  }
}
