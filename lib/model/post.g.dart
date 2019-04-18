// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post()
    ..at = AtField.stringToDate(json['at'] as String)
    ..id = json['id'] as int
    ..msg = json['msg'] as String
    ..read = json['read'] as bool
    ..stars = (json['stars'] as num).toDouble();
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'at': AtField.dateToString(instance.at),
      'id': instance.id,
      'msg': instance.msg,
      'read': instance.read,
      'stars': instance.stars
    };
