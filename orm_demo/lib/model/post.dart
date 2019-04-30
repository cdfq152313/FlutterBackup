import 'dart:async';
import 'package:jaguar_query/jaguar_query.dart';
import 'package:jaguar_orm/jaguar_orm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:orm_demo/model/author.dart';

part 'post.jorm.dart';

part 'post.g.dart';

@JsonSerializable(nullable: false)
class Post {
  @PrimaryKey()
  int id;

  @Column(isNullable: true)
  String msg;

  @Column(isNullable: true)
  bool read;

  @Column(isNullable: true)
  double stars;

  @Column(isNullable: true)
  DateTime at;

  @HasOne(AuthorBean)
  Author author;

  Post();

  Post.make(this.id, this.msg, this.stars, this.read, this.at);

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);

  @override
  String toString() {
    return 'Post{id: $id, msg: $msg, read: $read, stars: $stars, at: $at, author: $author}';
  }

}

@GenBean()
class PostBean extends Bean<Post> with _PostBean {
  PostBean(Adapter adapter) :super(adapter){
    this.drop();
    this.createTable();
    authorBean = AuthorBean(adapter, this);
  }

  final String tableName = 'posts';

  @override
  AuthorBean authorBean;
}
