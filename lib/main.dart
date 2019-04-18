// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:jaguar_query_sqflite/jaguar_query_sqflite.dart';
import 'package:orm_demo/model/post.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

/// The adapter
SqfliteAdapter _adapter;
StringBuffer sb;

void main() async {
  sb = StringBuffer();
  log("=== Setup ===");
  var dbPath = await getDatabasesPath();
  _adapter = new SqfliteAdapter(path.join(dbPath, "test.db"));
  await _adapter.connect();
  final bean = PostBean(_adapter);
  await bean.drop();
  await bean.createTable();

  log("=== Start ===");
  var str =
      '{"id": 1,"msg": "Hello", "read": false,"stars": 200.2,"at": "2008-09-15T15:53:00"}';
  log("Json Value: " + str);
  log("");

  log("=== Json Deserialization ===");
  var json_map = jsonDecode(str);
  var post = Post.fromJson(json_map);
  log("Post object: " + post.toString());
  log("");

  log("=== insert object ===");
  log('Inserting row ...');
  int id1 = await bean.insert(post);
  log('Inserted successfully row with id: $id1!');
  log("");

  log("=== find data ===");
  Post post1 = await bean.find(id1);
  log('Find id$id1. Result: ' + post1.toString());
  log("");

  log("=== Json Serialization===");
  str = jsonEncode(post.toJson());
  log("Result: " + str);
  log("");

  await _adapter.close();
  runApp(SingleChildScrollView(
      padding: EdgeInsets.only(top: 30),
      child: Text(sb.toString(),
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 20.0, // insert your font size here
          ))));
}

void log(msg) {
  print(msg);
  sb.writeln(msg);
}
