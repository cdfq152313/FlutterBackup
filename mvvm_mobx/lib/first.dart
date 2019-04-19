import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_mobx/counter_store.dart';

class FirstScreen extends StatelessWidget {

  FirstScreen(this.counter);

  final CounterStore counter;
  final title = "Flutter Demo Home Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
                builder: (_) =>
                Text(
                  '${counter.value}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .display1,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
