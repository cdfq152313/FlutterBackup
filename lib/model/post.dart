import 'dart:async';
import 'package:jaguar_query/jaguar_query.dart';
import 'package:jaguar_orm/jaguar_orm.dart';
import 'package:json_annotation/json_annotation.dart';


part 'post.jorm.dart';
part 'post.g.dart';

@JsonSerializable(nullable: false)
class Post {
  Post();

  Post.make(this.id, this.msg, this.stars, this.read, this.at);
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  @PrimaryKey()
  int id;

  @Column(isNullable: true)
  String msg;

  @Column(isNullable: true)
  bool read;

  @Column(isNullable: true)
  double stars;

  @Column(isNullable: true)
  @JsonKey(toJson: Post.dateToString, fromJson: stringToDate)
  DateTime at;

  String toString() =>
      'Post(id: $id, message: $msg, stars: $stars, read: $read, at: $at)';
  Map<String, dynamic> toJson() => _$PostToJson(this);

  static DateTime stringToDate(String s){
    return DateTime.now();
  }

  static String dateToString(DateTime datetime){
    return "2011-11-11T11:11:11";
  }
}

@GenBean()
class PostBean extends Bean<Post> with _PostBean {
  PostBean(Adapter adapter) : super(adapter);

  Future<int> updateReadField(int id, bool read) async {
    Update st = updater.where(this.id.eq(id)).set(this.read, read);
    return adapter.update(st);
  }

  final String tableName = 'posts';
}
