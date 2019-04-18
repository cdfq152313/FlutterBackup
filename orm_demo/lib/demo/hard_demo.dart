// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:orm_demo/log.dart';
import 'package:orm_demo/model/built_post.dart';


void run() async {
  Log.debug("=== Start ===");
  Log.debug("=== Generate Post object ===");
  var post = BuiltPost((b) => b
      ..id = 200
      ..msg = "Say hello"
      ..read = true
      ..stars = 101
      ..at = "2020-11-11T11:11:11");
  Log.debug("object value: " + post.toString());
  Log.debug("json value: " + post.toJson());
  Log.debug("");

  Log.debug("=== Read from a json String ===");
  var str =
      '{"id": 1,"msg": "Hello", "read": false,"stars": 200.2,"at": "2008-09-15T15:53:00"}';
  Log.debug("Json String: " + str);
  post = BuiltPost.fromJson(str);
  Log.debug("object value: " + post.toString());


  runApp(SingleChildScrollView(
      padding: EdgeInsets.only(top: 30),
      child: Text(Log.out(),
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 20.0, // insert your font size here
          ))));
}