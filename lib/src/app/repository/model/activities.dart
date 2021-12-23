enum ActivityType {
  comment,
  followRequest,
  followNotification,
  likeNotification,
  commentNotification,
  tagNotification,
}

class Activity {
  String title;
  String content;
  List<String> people;
  ActivityType type;
  Activity(this.title, this.content, this.people, this.type);
}
