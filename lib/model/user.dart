import 'dart:async';
import 'package:jaguar_query/jaguar_query.dart';
import 'package:jaguar_orm/jaguar_orm.dart';

part 'user.jorm.dart';

class User {
  @PrimaryKey()
  String id;

  String name;

  static const String tableName = '_user';

  String toString() => "User($id, $name)";
}

@GenBean()
class UserBean extends Bean<User> with _UserBean {
  UserBean(Adapter adapter) : super(adapter);

  @override
  String get tableName => User.tableName;
}