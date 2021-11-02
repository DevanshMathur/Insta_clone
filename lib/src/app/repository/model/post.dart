import 'package:insta_clone/src/app/repository/model/post_type_enum.dart';

class Post {
  final String name;
  final String profileUrl;
  final String location;
  final String caption;
  final List<List<String>>? posts;
  final String? reelUrl;

  Post(this.name, this.profileUrl, this.location, this.caption, this.posts, this.reelUrl);
}