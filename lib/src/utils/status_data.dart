import 'package:insta_clone/src/app/repository/model/status.dart';

class StatusData {
  static List<Status> statusList = [];

  static void createStatus() {
    for (int i=0;i<10;i++) {
      statusList.add(
        Status(
          "https: //static.foxnews.com/foxnews.com/content/uploads/2019/07/NJtruck720.jpg",
          "name${i+1}",
        ),
      );
    }
  }
}
