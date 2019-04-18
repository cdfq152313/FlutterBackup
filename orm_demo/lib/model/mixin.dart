import 'package:json_annotation/json_annotation.dart';
import 'package:jaguar_orm/jaguar_orm.dart';

abstract class AtField{

  @Column(isNullable: true)
  @JsonKey(fromJson: stringToDate, toJson: dateToString)
  DateTime at;

  static DateTime stringToDate(String s){
    if(s != null) return DateTime.parse(s);
    else return null;
  }

  static String dateToString(DateTime datetime){
    if(datetime != null) return datetime.toIso8601String();
    else return null;
  }
}