enum PostTypeEnum {
  image,
  video,
}

class Post {
  final String name;
  final int likeCount;
  final String caption;
  final String location;
  final String? reelUrl;
  final int commentCount;
  final String profileUrl;
  final List<String> taggedUsers;
  final List<List<String>>? posts;

  Post(this.name, this.profileUrl, this.location, this.caption, this.posts,
      this.reelUrl, this.taggedUsers, this.likeCount, this.commentCount);
}
