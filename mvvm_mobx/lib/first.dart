import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mvvm_mobx/counter_store.dart';
import 'package:mvvm_mobx/second.dart';

class FirstScreen extends StatelessWidget {

  FirstScreen(this.counter);

  final CounterStore counter;
  final title = "Flutter Demo Home Page";

  @override
  Widget build(BuildContext context) {
    print("Build First Screen.");
//    when((_)=>counter.navigatorToSecondScreen,
//            ()=>navigateToSecondScreen(context));
    autorun((_){
      print("Auto Run");
      if(counter.navigatorToSecondScreen){
        navigateToSecondScreen(context);
      }
    });

    autorun((_){
      print("Check value: ${counter.value}");
    });

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

  void navigateToSecondScreen(BuildContext context){
      print("Navigate to second screen");
      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
      counter.clear();
  }
}
