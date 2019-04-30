import 'dart:async';
import 'package:jaguar_query/jaguar_query.dart';
import 'package:jaguar_orm/jaguar_orm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:orm_demo/model/post.dart';

part 'author.jorm.dart';

part 'author.g.dart';

@JsonSerializable(nullable: false)
class Author {
  @PrimaryKey()
  int id;

  @Column(isNullable: true)
  String name;

  @BelongsTo(PostBean)
  int postId;

  Author();

  Author.make(this.id, this.name);

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);

  @override
  String toString() {
    return 'Author{id: $id, name: $name, postId: $postId}';
  }
}

@GenBean()
class AuthorBean extends Bean<Author> with _AuthorBean {
  AuthorBean(Adapter adapter, this.postBean) : super(adapter){
    this.drop();
    this.createTable();
  }
  final String tableName = 'author';

  @override
  PostBean postBean;
}