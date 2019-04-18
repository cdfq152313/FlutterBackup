// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:jaguar_query_sqflite/jaguar_query_sqflite.dart';
import 'package:orm_demo/log.dart';
import 'package:orm_demo/model/post.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

/// The adapter
SqfliteAdapter _adapter;

void run() async {
  Log.debug("=== Setup ===");
  var dbPath = await getDatabasesPath();
  _adapter = new SqfliteAdapter(path.join(dbPath, "test.db"));
  await _adapter.connect();
  final bean = PostBean(_adapter);
  await bean.drop();
  await bean.createTable();

  Log.debug("=== Start ===");
  var str =
      '{"id": 1,"msg": "Hello", "read": false,"stars": 200.2,"at": "2008-09-15T15:53:00"}';
  Log.debug("Json Value: " + str);
  Log.debug("");

  Log.debug("=== Json Deserialization ===");
  var json_map = jsonDecode(str);
  var post = Post.fromJson(json_map);
  Log.debug("Post object: " + post.toString());
  Log.debug("");

  Log.debug("=== insert object ===");
  Log.debug('Inserting row ...');
  int id1 = await bean.insert(post);
  Log.debug('Inserted successfully row with id: $id1!');
  Log.debug("");

  Log.debug("=== find data ===");
  post = await bean.find(id1);
  Log.debug('Find id$id1. Result: ' + post.toString());
  Log.debug("");

  Log.debug("=== Json Serialization===");
  str = jsonEncode(post.toJson());
  Log.debug("Result: " + str);
  Log.debug("");

  await _adapter.close();
  runApp(SingleChildScrollView(
      padding: EdgeInsets.only(top: 30),
      child: Text(Log.out(),
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 20.0, // insert your font size here
          ))));
}