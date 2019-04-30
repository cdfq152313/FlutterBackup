// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return Author()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..postId = json['postId'] as int;
}

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'postId': instance.postId
    };
