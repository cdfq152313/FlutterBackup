library built_post;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:orm_demo/model/serializers.dart';

part 'built_post.g.dart';

abstract class BuiltPost implements Built<BuiltPost, BuiltPostBuilder> {
  int get id;

  String get msg;

  bool get read;

  double get stars;

  String get at;

  String toString() =>
      'BuiltPost(id: $id, message: $msg, stars: $stars, read: $read, at: $at)';

  BuiltPost._();

  factory BuiltPost([updates(BuiltPostBuilder b)]) = _$BuiltPost;
  
  String toJson(){
    return json.encode(serializers.serializeWith(BuiltPost.serializer, this));
  }

  static BuiltPost fromJson(String jsonString){
    return serializers.deserializeWith(BuiltPost.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltPost> get serializer => _$builtPostSerializer;
}

