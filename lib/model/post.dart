import 'dart:async';
import 'package:jaguar_query/jaguar_query.dart';
import 'package:jaguar_orm/jaguar_orm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:orm_demo/model/mixin.dart';


part 'post.jorm.dart';
part 'post.g.dart';

@JsonSerializable(nullable: false)
class Post with AtField{
  Post();

  Post.make(this.id, this.msg, this.stars, this.read, DateTime at){
    this.at = at;
  }

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  @PrimaryKey()
  int id;

  @Column(isNullable: true)
  String msg;

  @Column(isNullable: true)
  bool read;

  @Column(isNullable: true)
  double stars;

  String toString() =>
      'Post(id: $id, message: $msg, stars: $stars, read: $read, at: $at)';
  Map<String, dynamic> toJson() => _$PostToJson(this);
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
