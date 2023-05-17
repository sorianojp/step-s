import 'package:step/models/user_model.dart';

class Announcement {
  int? id;
  String? title;
  String? body;
  String? created;
  User? user;

  Announcement({
    this.id,
    this.title,
    this.body,
    this.created,
    this.user,
  });

  factory Announcement.fromJson(Map<String, dynamic> json) {
    return Announcement(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      created: json['created_at'],
      user: User(
        id: json['user']['id'],
        name: json['user']['full_name'],
        avatar: json['user']['avatar'],
      ),
    );
  }
}
