import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/button/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.red,
          ),
      home: Scaffold(
          body: Center(child: MyButton(
        "test",
        onPressed: () => {},
      )),
    ),);
  }
}
