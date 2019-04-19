import 'package:flutter/material.dart';
import 'package:mvvm_mobx/counter_store.dart';
import 'package:mvvm_mobx/first.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(CounterStore()),
    );
  }
}