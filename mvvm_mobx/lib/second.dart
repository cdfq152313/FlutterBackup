import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget {
  final title = "Second Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
      body: Center(
        child: RaisedButton(
            child: Text("Back To First!"),
            onPressed: () => Navigator.pop(context)),
      ),
    ) ;
  }
}
