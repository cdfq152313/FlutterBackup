// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post()
    ..id = json['id'] as int
    ..msg = json['msg'] as String
    ..read = json['read'] as bool
    ..stars = (json['stars'] as num).toDouble()
    ..at = Post.stringToDate(json['at'] as String);
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'msg': instance.msg,
      'read': instance.read,
      'stars': instance.stars,
      'at': Post.dateToString(instance.at)
    };
